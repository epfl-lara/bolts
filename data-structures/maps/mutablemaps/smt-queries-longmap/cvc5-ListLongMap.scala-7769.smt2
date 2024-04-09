; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97394 () Bool)

(assert start!97394)

(declare-fun b_free!23329 () Bool)

(declare-fun b_next!23329 () Bool)

(assert (=> start!97394 (= b_free!23329 (not b_next!23329))))

(declare-fun tp!82287 () Bool)

(declare-fun b_and!37513 () Bool)

(assert (=> start!97394 (= tp!82287 b_and!37513)))

(declare-fun res!740552 () Bool)

(declare-fun e!632920 () Bool)

(assert (=> start!97394 (=> (not res!740552) (not e!632920))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72046 0))(
  ( (array!72047 (arr!34672 (Array (_ BitVec 32) (_ BitVec 64))) (size!35209 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72046)

(assert (=> start!97394 (= res!740552 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35209 _keys!1208))))))

(assert (=> start!97394 e!632920))

(declare-fun tp_is_empty!27589 () Bool)

(assert (=> start!97394 tp_is_empty!27589))

(declare-fun array_inv!26548 (array!72046) Bool)

(assert (=> start!97394 (array_inv!26548 _keys!1208)))

(assert (=> start!97394 true))

(assert (=> start!97394 tp!82287))

(declare-datatypes ((V!41913 0))(
  ( (V!41914 (val!13851 Int)) )
))
(declare-datatypes ((ValueCell!13085 0))(
  ( (ValueCellFull!13085 (v!16485 V!41913)) (EmptyCell!13085) )
))
(declare-datatypes ((array!72048 0))(
  ( (array!72049 (arr!34673 (Array (_ BitVec 32) ValueCell!13085)) (size!35210 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72048)

(declare-fun e!632915 () Bool)

(declare-fun array_inv!26549 (array!72048) Bool)

(assert (=> start!97394 (and (array_inv!26549 _values!996) e!632915)))

(declare-fun b!1109581 () Bool)

(declare-fun res!740561 () Bool)

(assert (=> b!1109581 (=> (not res!740561) (not e!632920))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1109581 (= res!740561 (= (select (arr!34672 _keys!1208) i!673) k!934))))

(declare-fun b!1109582 () Bool)

(declare-fun res!740554 () Bool)

(assert (=> b!1109582 (=> (not res!740554) (not e!632920))))

(assert (=> b!1109582 (= res!740554 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35209 _keys!1208))))))

(declare-fun b!1109583 () Bool)

(declare-fun e!632919 () Bool)

(assert (=> b!1109583 (= e!632919 tp_is_empty!27589)))

(declare-datatypes ((tuple2!17580 0))(
  ( (tuple2!17581 (_1!8800 (_ BitVec 64)) (_2!8800 V!41913)) )
))
(declare-datatypes ((List!24317 0))(
  ( (Nil!24314) (Cons!24313 (h!25522 tuple2!17580) (t!34699 List!24317)) )
))
(declare-datatypes ((ListLongMap!15561 0))(
  ( (ListLongMap!15562 (toList!7796 List!24317)) )
))
(declare-fun call!46684 () ListLongMap!15561)

(declare-fun call!46685 () ListLongMap!15561)

(declare-fun e!632918 () Bool)

(declare-fun b!1109584 () Bool)

(declare-fun -!1024 (ListLongMap!15561 (_ BitVec 64)) ListLongMap!15561)

(assert (=> b!1109584 (= e!632918 (= call!46684 (-!1024 call!46685 k!934)))))

(declare-fun b!1109585 () Bool)

(declare-fun res!740562 () Bool)

(assert (=> b!1109585 (=> (not res!740562) (not e!632920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109585 (= res!740562 (validKeyInArray!0 k!934))))

(declare-fun b!1109586 () Bool)

(declare-fun res!740555 () Bool)

(assert (=> b!1109586 (=> (not res!740555) (not e!632920))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1109586 (= res!740555 (and (= (size!35210 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35209 _keys!1208) (size!35210 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109587 () Bool)

(declare-fun res!740557 () Bool)

(assert (=> b!1109587 (=> (not res!740557) (not e!632920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109587 (= res!740557 (validMask!0 mask!1564))))

(declare-fun b!1109588 () Bool)

(declare-fun e!632916 () Bool)

(declare-fun mapRes!43201 () Bool)

(assert (=> b!1109588 (= e!632915 (and e!632916 mapRes!43201))))

(declare-fun condMapEmpty!43201 () Bool)

(declare-fun mapDefault!43201 () ValueCell!13085)

