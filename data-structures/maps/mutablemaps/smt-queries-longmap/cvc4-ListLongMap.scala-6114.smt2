; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78824 () Bool)

(assert start!78824)

(declare-fun b_free!17009 () Bool)

(declare-fun b_next!17009 () Bool)

(assert (=> start!78824 (= b_free!17009 (not b_next!17009))))

(declare-fun tp!59468 () Bool)

(declare-fun b_and!27773 () Bool)

(assert (=> start!78824 (= tp!59468 b_and!27773)))

(declare-fun b!919614 () Bool)

(declare-fun e!516201 () Bool)

(declare-fun tp_is_empty!19517 () Bool)

(assert (=> b!919614 (= e!516201 tp_is_empty!19517)))

(declare-fun b!919615 () Bool)

(declare-fun res!620218 () Bool)

(declare-fun e!516203 () Bool)

(assert (=> b!919615 (=> (not res!620218) (not e!516203))))

(declare-datatypes ((array!55026 0))(
  ( (array!55027 (arr!26454 (Array (_ BitVec 32) (_ BitVec 64))) (size!26914 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55026)

(declare-datatypes ((List!18681 0))(
  ( (Nil!18678) (Cons!18677 (h!19823 (_ BitVec 64)) (t!26428 List!18681)) )
))
(declare-fun arrayNoDuplicates!0 (array!55026 (_ BitVec 32) List!18681) Bool)

(assert (=> b!919615 (= res!620218 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18678))))

(declare-fun b!919616 () Bool)

(declare-fun res!620222 () Bool)

(assert (=> b!919616 (=> (not res!620222) (not e!516203))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55026 (_ BitVec 32)) Bool)

(assert (=> b!919616 (= res!620222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31032 () Bool)

(declare-fun mapRes!31032 () Bool)

(assert (=> mapIsEmpty!31032 mapRes!31032))

(declare-fun b!919617 () Bool)

(declare-fun res!620213 () Bool)

(declare-fun e!516206 () Bool)

(assert (=> b!919617 (=> (not res!620213) (not e!516206))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919617 (= res!620213 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919618 () Bool)

(declare-fun e!516204 () Bool)

(assert (=> b!919618 (= e!516206 e!516204)))

(declare-fun res!620219 () Bool)

(assert (=> b!919618 (=> (not res!620219) (not e!516204))))

(declare-fun lt!412821 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919618 (= res!620219 (validKeyInArray!0 lt!412821))))

(assert (=> b!919618 (= lt!412821 (select (arr!26454 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919619 () Bool)

(declare-fun e!516207 () Bool)

(assert (=> b!919619 (= e!516207 (and e!516201 mapRes!31032))))

(declare-fun condMapEmpty!31032 () Bool)

(declare-datatypes ((V!30987 0))(
  ( (V!30988 (val!9809 Int)) )
))
(declare-datatypes ((ValueCell!9277 0))(
  ( (ValueCellFull!9277 (v!12327 V!30987)) (EmptyCell!9277) )
))
(declare-datatypes ((array!55028 0))(
  ( (array!55029 (arr!26455 (Array (_ BitVec 32) ValueCell!9277)) (size!26915 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55028)

(declare-fun mapDefault!31032 () ValueCell!9277)

