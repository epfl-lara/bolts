; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39780 () Bool)

(assert start!39780)

(declare-fun b_free!10039 () Bool)

(declare-fun b_next!10039 () Bool)

(assert (=> start!39780 (= b_free!10039 (not b_next!10039))))

(declare-fun tp!35646 () Bool)

(declare-fun b_and!17755 () Bool)

(assert (=> start!39780 (= tp!35646 b_and!17755)))

(declare-fun b!428294 () Bool)

(declare-fun res!251489 () Bool)

(declare-fun e!253819 () Bool)

(assert (=> b!428294 (=> (not res!251489) (not e!253819))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26199 0))(
  ( (array!26200 (arr!12546 (Array (_ BitVec 32) (_ BitVec 64))) (size!12898 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26199)

(assert (=> b!428294 (= res!251489 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12898 _keys!709))))))

(declare-fun mapNonEmpty!18408 () Bool)

(declare-fun mapRes!18408 () Bool)

(declare-fun tp!35645 () Bool)

(declare-fun e!253814 () Bool)

(assert (=> mapNonEmpty!18408 (= mapRes!18408 (and tp!35645 e!253814))))

(declare-fun mapKey!18408 () (_ BitVec 32))

(declare-datatypes ((V!16027 0))(
  ( (V!16028 (val!5640 Int)) )
))
(declare-datatypes ((ValueCell!5252 0))(
  ( (ValueCellFull!5252 (v!7883 V!16027)) (EmptyCell!5252) )
))
(declare-fun mapRest!18408 () (Array (_ BitVec 32) ValueCell!5252))

(declare-datatypes ((array!26201 0))(
  ( (array!26202 (arr!12547 (Array (_ BitVec 32) ValueCell!5252)) (size!12899 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26201)

(declare-fun mapValue!18408 () ValueCell!5252)

(assert (=> mapNonEmpty!18408 (= (arr!12547 _values!549) (store mapRest!18408 mapKey!18408 mapValue!18408))))

(declare-fun b!428295 () Bool)

(declare-fun res!251484 () Bool)

(assert (=> b!428295 (=> (not res!251484) (not e!253819))))

(declare-datatypes ((List!7408 0))(
  ( (Nil!7405) (Cons!7404 (h!8260 (_ BitVec 64)) (t!12904 List!7408)) )
))
(declare-fun arrayNoDuplicates!0 (array!26199 (_ BitVec 32) List!7408) Bool)

(assert (=> b!428295 (= res!251484 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7405))))

(declare-fun b!428296 () Bool)

(declare-fun e!253815 () Bool)

(declare-fun e!253821 () Bool)

(assert (=> b!428296 (= e!253815 (not e!253821))))

(declare-fun res!251481 () Bool)

(assert (=> b!428296 (=> res!251481 e!253821)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428296 (= res!251481 (not (validKeyInArray!0 (select (arr!12546 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7358 0))(
  ( (tuple2!7359 (_1!3689 (_ BitVec 64)) (_2!3689 V!16027)) )
))
(declare-datatypes ((List!7409 0))(
  ( (Nil!7406) (Cons!7405 (h!8261 tuple2!7358) (t!12905 List!7409)) )
))
(declare-datatypes ((ListLongMap!6285 0))(
  ( (ListLongMap!6286 (toList!3158 List!7409)) )
))
(declare-fun lt!195741 () ListLongMap!6285)

(declare-fun lt!195745 () ListLongMap!6285)

(assert (=> b!428296 (= lt!195741 lt!195745)))

(declare-fun lt!195743 () ListLongMap!6285)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16027)

(declare-fun +!1311 (ListLongMap!6285 tuple2!7358) ListLongMap!6285)

(assert (=> b!428296 (= lt!195745 (+!1311 lt!195743 (tuple2!7359 k!794 v!412)))))

(declare-fun minValue!515 () V!16027)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16027)

(declare-fun lt!195742 () array!26201)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!195744 () array!26199)

(declare-fun getCurrentListMapNoExtraKeys!1357 (array!26199 array!26201 (_ BitVec 32) (_ BitVec 32) V!16027 V!16027 (_ BitVec 32) Int) ListLongMap!6285)

(assert (=> b!428296 (= lt!195741 (getCurrentListMapNoExtraKeys!1357 lt!195744 lt!195742 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428296 (= lt!195743 (getCurrentListMapNoExtraKeys!1357 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12529 0))(
  ( (Unit!12530) )
))
(declare-fun lt!195740 () Unit!12529)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!511 (array!26199 array!26201 (_ BitVec 32) (_ BitVec 32) V!16027 V!16027 (_ BitVec 32) (_ BitVec 64) V!16027 (_ BitVec 32) Int) Unit!12529)

(assert (=> b!428296 (= lt!195740 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!511 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428297 () Bool)

(declare-fun res!251488 () Bool)

(assert (=> b!428297 (=> (not res!251488) (not e!253819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428297 (= res!251488 (validMask!0 mask!1025))))

(declare-fun res!251493 () Bool)

(assert (=> start!39780 (=> (not res!251493) (not e!253819))))

(assert (=> start!39780 (= res!251493 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12898 _keys!709))))))

(assert (=> start!39780 e!253819))

(declare-fun tp_is_empty!11191 () Bool)

(assert (=> start!39780 tp_is_empty!11191))

(assert (=> start!39780 tp!35646))

(assert (=> start!39780 true))

(declare-fun e!253816 () Bool)

(declare-fun array_inv!9130 (array!26201) Bool)

(assert (=> start!39780 (and (array_inv!9130 _values!549) e!253816)))

(declare-fun array_inv!9131 (array!26199) Bool)

(assert (=> start!39780 (array_inv!9131 _keys!709)))

(declare-fun b!428298 () Bool)

(declare-fun res!251492 () Bool)

(declare-fun e!253817 () Bool)

(assert (=> b!428298 (=> (not res!251492) (not e!253817))))

(assert (=> b!428298 (= res!251492 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18408 () Bool)

(assert (=> mapIsEmpty!18408 mapRes!18408))

(declare-fun b!428299 () Bool)

(declare-fun e!253820 () Unit!12529)

(declare-fun Unit!12531 () Unit!12529)

(assert (=> b!428299 (= e!253820 Unit!12531)))

(declare-fun lt!195747 () Unit!12529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26199 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12529)

(assert (=> b!428299 (= lt!195747 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428299 false))

(declare-fun b!428300 () Bool)

(declare-fun Unit!12532 () Unit!12529)

(assert (=> b!428300 (= e!253820 Unit!12532)))

(declare-fun b!428301 () Bool)

(declare-fun res!251482 () Bool)

(assert (=> b!428301 (=> (not res!251482) (not e!253819))))

(assert (=> b!428301 (= res!251482 (validKeyInArray!0 k!794))))

(declare-fun b!428302 () Bool)

(assert (=> b!428302 (= e!253821 true)))

(assert (=> b!428302 (not (= (select (arr!12546 _keys!709) from!863) k!794))))

(declare-fun lt!195739 () Unit!12529)

(assert (=> b!428302 (= lt!195739 e!253820)))

(declare-fun c!55319 () Bool)

(assert (=> b!428302 (= c!55319 (= (select (arr!12546 _keys!709) from!863) k!794))))

(declare-fun lt!195746 () ListLongMap!6285)

(declare-fun get!6225 (ValueCell!5252 V!16027) V!16027)

(declare-fun dynLambda!758 (Int (_ BitVec 64)) V!16027)

(assert (=> b!428302 (= lt!195746 (+!1311 lt!195745 (tuple2!7359 (select (arr!12546 _keys!709) from!863) (get!6225 (select (arr!12547 _values!549) from!863) (dynLambda!758 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428303 () Bool)

(declare-fun e!253822 () Bool)

(assert (=> b!428303 (= e!253816 (and e!253822 mapRes!18408))))

(declare-fun condMapEmpty!18408 () Bool)

(declare-fun mapDefault!18408 () ValueCell!5252)

