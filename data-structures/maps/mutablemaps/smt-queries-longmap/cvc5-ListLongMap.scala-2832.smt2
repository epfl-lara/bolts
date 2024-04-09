; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40964 () Bool)

(assert start!40964)

(declare-fun b_free!10891 () Bool)

(declare-fun b_next!10891 () Bool)

(assert (=> start!40964 (= b_free!10891 (not b_next!10891))))

(declare-fun tp!38500 () Bool)

(declare-fun b_and!19051 () Bool)

(assert (=> start!40964 (= tp!38500 b_and!19051)))

(declare-fun b!455477 () Bool)

(declare-fun e!266265 () Bool)

(declare-fun tp_is_empty!12229 () Bool)

(assert (=> b!455477 (= e!266265 tp_is_empty!12229)))

(declare-fun b!455478 () Bool)

(declare-fun e!266269 () Bool)

(declare-fun e!266266 () Bool)

(assert (=> b!455478 (= e!266269 e!266266)))

(declare-fun res!271713 () Bool)

(assert (=> b!455478 (=> (not res!271713) (not e!266266))))

(declare-datatypes ((array!28227 0))(
  ( (array!28228 (arr!13554 (Array (_ BitVec 32) (_ BitVec 64))) (size!13906 (_ BitVec 32))) )
))
(declare-fun lt!206344 () array!28227)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28227 (_ BitVec 32)) Bool)

(assert (=> b!455478 (= res!271713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206344 mask!1025))))

(declare-fun _keys!709 () array!28227)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455478 (= lt!206344 (array!28228 (store (arr!13554 _keys!709) i!563 k!794) (size!13906 _keys!709)))))

(declare-fun b!455479 () Bool)

(declare-fun res!271712 () Bool)

(assert (=> b!455479 (=> (not res!271712) (not e!266269))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17411 0))(
  ( (V!17412 (val!6159 Int)) )
))
(declare-datatypes ((ValueCell!5771 0))(
  ( (ValueCellFull!5771 (v!8421 V!17411)) (EmptyCell!5771) )
))
(declare-datatypes ((array!28229 0))(
  ( (array!28230 (arr!13555 (Array (_ BitVec 32) ValueCell!5771)) (size!13907 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28229)

(assert (=> b!455479 (= res!271712 (and (= (size!13907 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13906 _keys!709) (size!13907 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455480 () Bool)

(declare-fun res!271709 () Bool)

(assert (=> b!455480 (=> (not res!271709) (not e!266269))))

(assert (=> b!455480 (= res!271709 (or (= (select (arr!13554 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13554 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455481 () Bool)

(declare-fun res!271714 () Bool)

(assert (=> b!455481 (=> (not res!271714) (not e!266269))))

(assert (=> b!455481 (= res!271714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455482 () Bool)

(declare-fun res!271711 () Bool)

(assert (=> b!455482 (=> (not res!271711) (not e!266269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455482 (= res!271711 (validKeyInArray!0 k!794))))

(declare-fun res!271708 () Bool)

(assert (=> start!40964 (=> (not res!271708) (not e!266269))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40964 (= res!271708 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13906 _keys!709))))))

(assert (=> start!40964 e!266269))

(assert (=> start!40964 tp_is_empty!12229))

(assert (=> start!40964 tp!38500))

(assert (=> start!40964 true))

(declare-fun e!266270 () Bool)

(declare-fun array_inv!9806 (array!28229) Bool)

(assert (=> start!40964 (and (array_inv!9806 _values!549) e!266270)))

(declare-fun array_inv!9807 (array!28227) Bool)

(assert (=> start!40964 (array_inv!9807 _keys!709)))

(declare-fun b!455483 () Bool)

(declare-fun res!271716 () Bool)

(assert (=> b!455483 (=> (not res!271716) (not e!266269))))

(assert (=> b!455483 (= res!271716 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13906 _keys!709))))))

(declare-fun b!455484 () Bool)

(assert (=> b!455484 (= e!266266 false)))

(declare-datatypes ((tuple2!8062 0))(
  ( (tuple2!8063 (_1!4041 (_ BitVec 64)) (_2!4041 V!17411)) )
))
(declare-datatypes ((List!8169 0))(
  ( (Nil!8166) (Cons!8165 (h!9021 tuple2!8062) (t!14005 List!8169)) )
))
(declare-datatypes ((ListLongMap!6989 0))(
  ( (ListLongMap!6990 (toList!3510 List!8169)) )
))
(declare-fun lt!206345 () ListLongMap!6989)

(declare-fun minValue!515 () V!17411)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17411)

(declare-fun v!412 () V!17411)

(declare-fun getCurrentListMapNoExtraKeys!1686 (array!28227 array!28229 (_ BitVec 32) (_ BitVec 32) V!17411 V!17411 (_ BitVec 32) Int) ListLongMap!6989)

(assert (=> b!455484 (= lt!206345 (getCurrentListMapNoExtraKeys!1686 lt!206344 (array!28230 (store (arr!13555 _values!549) i!563 (ValueCellFull!5771 v!412)) (size!13907 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206346 () ListLongMap!6989)

(assert (=> b!455484 (= lt!206346 (getCurrentListMapNoExtraKeys!1686 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455485 () Bool)

(declare-fun mapRes!19984 () Bool)

(assert (=> b!455485 (= e!266270 (and e!266265 mapRes!19984))))

(declare-fun condMapEmpty!19984 () Bool)

(declare-fun mapDefault!19984 () ValueCell!5771)

