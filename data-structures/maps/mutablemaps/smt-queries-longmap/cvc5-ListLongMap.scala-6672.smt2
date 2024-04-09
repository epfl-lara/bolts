; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84032 () Bool)

(assert start!84032)

(declare-fun b_free!19759 () Bool)

(declare-fun b_next!19759 () Bool)

(assert (=> start!84032 (= b_free!19759 (not b_next!19759))))

(declare-fun tp!68800 () Bool)

(declare-fun b_and!31619 () Bool)

(assert (=> start!84032 (= tp!68800 b_and!31619)))

(declare-fun b!981674 () Bool)

(declare-fun res!657038 () Bool)

(declare-fun e!553430 () Bool)

(assert (=> b!981674 (=> (not res!657038) (not e!553430))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35393 0))(
  ( (V!35394 (val!11454 Int)) )
))
(declare-datatypes ((ValueCell!10922 0))(
  ( (ValueCellFull!10922 (v!14016 V!35393)) (EmptyCell!10922) )
))
(declare-datatypes ((array!61607 0))(
  ( (array!61608 (arr!29657 (Array (_ BitVec 32) ValueCell!10922)) (size!30137 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61607)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61609 0))(
  ( (array!61610 (arr!29658 (Array (_ BitVec 32) (_ BitVec 64))) (size!30138 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61609)

(assert (=> b!981674 (= res!657038 (and (= (size!30137 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30138 _keys!1544) (size!30137 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981675 () Bool)

(declare-fun res!657037 () Bool)

(assert (=> b!981675 (=> (not res!657037) (not e!553430))))

(declare-datatypes ((List!20682 0))(
  ( (Nil!20679) (Cons!20678 (h!21840 (_ BitVec 64)) (t!29399 List!20682)) )
))
(declare-fun arrayNoDuplicates!0 (array!61609 (_ BitVec 32) List!20682) Bool)

(assert (=> b!981675 (= res!657037 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20679))))

(declare-fun b!981677 () Bool)

(declare-fun e!553426 () Bool)

(assert (=> b!981677 (= e!553426 (not true))))

(declare-datatypes ((tuple2!14776 0))(
  ( (tuple2!14777 (_1!7398 (_ BitVec 64)) (_2!7398 V!35393)) )
))
(declare-datatypes ((List!20683 0))(
  ( (Nil!20680) (Cons!20679 (h!21841 tuple2!14776) (t!29400 List!20683)) )
))
(declare-datatypes ((ListLongMap!13487 0))(
  ( (ListLongMap!13488 (toList!6759 List!20683)) )
))
(declare-fun lt!435817 () ListLongMap!13487)

(declare-fun lt!435816 () tuple2!14776)

(declare-fun lt!435819 () tuple2!14776)

(declare-fun +!2962 (ListLongMap!13487 tuple2!14776) ListLongMap!13487)

(assert (=> b!981677 (= (+!2962 (+!2962 lt!435817 lt!435816) lt!435819) (+!2962 (+!2962 lt!435817 lt!435819) lt!435816))))

(declare-fun lt!435818 () V!35393)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981677 (= lt!435819 (tuple2!14777 (select (arr!29658 _keys!1544) from!1932) lt!435818))))

(declare-fun zeroValue!1220 () V!35393)

(assert (=> b!981677 (= lt!435816 (tuple2!14777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32599 0))(
  ( (Unit!32600) )
))
(declare-fun lt!435820 () Unit!32599)

(declare-fun addCommutativeForDiffKeys!624 (ListLongMap!13487 (_ BitVec 64) V!35393 (_ BitVec 64) V!35393) Unit!32599)

(assert (=> b!981677 (= lt!435820 (addCommutativeForDiffKeys!624 lt!435817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29658 _keys!1544) from!1932) lt!435818))))

(declare-fun mapIsEmpty!36239 () Bool)

(declare-fun mapRes!36239 () Bool)

(assert (=> mapIsEmpty!36239 mapRes!36239))

(declare-fun b!981678 () Bool)

(declare-fun e!553425 () Bool)

(declare-fun tp_is_empty!22807 () Bool)

(assert (=> b!981678 (= e!553425 tp_is_empty!22807)))

(declare-fun b!981679 () Bool)

(declare-fun res!657039 () Bool)

(assert (=> b!981679 (=> (not res!657039) (not e!553430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981679 (= res!657039 (validKeyInArray!0 (select (arr!29658 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36239 () Bool)

(declare-fun tp!68801 () Bool)

(assert (=> mapNonEmpty!36239 (= mapRes!36239 (and tp!68801 e!553425))))

(declare-fun mapValue!36239 () ValueCell!10922)

(declare-fun mapRest!36239 () (Array (_ BitVec 32) ValueCell!10922))

(declare-fun mapKey!36239 () (_ BitVec 32))

(assert (=> mapNonEmpty!36239 (= (arr!29657 _values!1278) (store mapRest!36239 mapKey!36239 mapValue!36239))))

(declare-fun b!981680 () Bool)

(declare-fun res!657035 () Bool)

(assert (=> b!981680 (=> (not res!657035) (not e!553430))))

(assert (=> b!981680 (= res!657035 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981681 () Bool)

(declare-fun e!553429 () Bool)

(declare-fun e!553428 () Bool)

(assert (=> b!981681 (= e!553429 (and e!553428 mapRes!36239))))

(declare-fun condMapEmpty!36239 () Bool)

(declare-fun mapDefault!36239 () ValueCell!10922)

