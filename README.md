# Feathers UI (npm version) 1.2.0

[Feathers UI](https://feathersui.com/) is a framework of graphical user interface (GUI) components for creative, cross-platform, frontend projects. It is especially well-suited for games, interactive data visualizations, and other rich, multimedia experiences.

⚠️ This version of Feathers UI is intended for JavaScript developers. It's not as actively tested as the Haxe version of the same library, and some bugs should be expected.

## Get started

The following instructions describe how to use Feathers UI with JavaScript.

### Installation (npm)

Open a terminal, and then install Feathers UI using the following command:

```sh
npm install feathersui-openfl
```

This command will also automatically install any additional required dependencies, like [OpenFL](https://www.npmjs.com/package/openfl) and [Actuate](https://www.npmjs.com/package/actuate), if necessary.

### Installation (CDN)

Alternatively, Feathers UI may be added to any HTML file using a few `<script>` tags:

```html
<script src="https://unpkg.com/openfl@8.9.6/dist/openfl.min.js"></script>
<script src="https://unpkg.com/actuate@1.8.9-beta/dist/actuate.min.js"></script>
<script src="https://unpkg.com/feathersui-openfl@1.2.0/dist/feathersui-openfl.min.js"></script>
```

### Choose an editor or IDE

[Visual Studio Code](https://code.visualstudio.com/) is recommended, but any editor or IDE that supports JavaScript should work with Feathers UI.

### Sample code

```js
class HelloWorld extends feathers.controls.Application {
  constructor() {
    super();

    this.layout = new feathers.layout.AnchorLayout();

    this.button = new feathers.controls.Button();
    this.button.layoutData = feathers.layout.AnchorLayoutData.center();
    this.button.text = "Click Me";
    this.button.addEventListener(
      feathers.events.TriggerEvent.TRIGGER,
      this.button_triggerHandler
    );
    this.addChild(this.button);
  }

  button_triggerHandler = (event) => {
    feathers.controls.TextCallout.show("Hello World", this.button);
  };
}

var stage = new openfl.display.Stage(0, 0, null, null, {
  allowHighDPI: true,
});
document.body.appendChild(stage.element);
stage.addChild(new HelloWorld());
```

## Help & Support

- [Documentation](https://feathersui.com/learn/haxe-openfl/)
- [Community Forum](https://community.feathersui.com/)
- [Discord Chat](https://discord.feathersui.com/)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/feathersui)

## News & Updates

- [Blog](https://feathersui.com/blog/)
- [Twitter](https://twitter.com/feathersui)
