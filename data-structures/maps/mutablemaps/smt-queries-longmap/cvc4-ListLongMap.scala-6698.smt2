; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84192 () Bool)

(assert start!84192)

(declare-fun b_free!19865 () Bool)

(declare-fun b_next!19865 () Bool)

(assert (=> start!84192 (= b_free!19865 (not b_next!19865))))

(declare-fun tp!69199 () Bool)

(declare-fun b_and!31825 () Bool)

(assert (=> start!84192 (= tp!69199 b_and!31825)))

(declare-fun b!984027 () Bool)

(declare-fun e!554779 () Bool)

(declare-fun tp_is_empty!22967 () Bool)

(assert (=> b!984027 (= e!554779 tp_is_empty!22967)))

(declare-fun b!984028 () Bool)

(declare-fun res!658567 () Bool)

(declare-fun e!554778 () Bool)

(assert (=> b!984028 (=> (not res!658567) (not e!554778))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61903 0))(
  ( (array!61904 (arr!29805 (Array (_ BitVec 32) (_ BitVec 64))) (size!30285 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61903)

(assert (=> b!984028 (= res!658567 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30285 _keys!1544))))))

(declare-fun res!658572 () Bool)

(assert (=> start!84192 (=> (not res!658572) (not e!554778))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84192 (= res!658572 (validMask!0 mask!1948))))

(assert (=> start!84192 e!554778))

(assert (=> start!84192 true))

(assert (=> start!84192 tp_is_empty!22967))

(declare-datatypes ((V!35605 0))(
  ( (V!35606 (val!11534 Int)) )
))
(declare-datatypes ((ValueCell!11002 0))(
  ( (ValueCellFull!11002 (v!14096 V!35605)) (EmptyCell!11002) )
))
(declare-datatypes ((array!61905 0))(
  ( (array!61906 (arr!29806 (Array (_ BitVec 32) ValueCell!11002)) (size!30286 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61905)

(declare-fun e!554777 () Bool)

(declare-fun array_inv!22911 (array!61905) Bool)

(assert (=> start!84192 (and (array_inv!22911 _values!1278) e!554777)))

(assert (=> start!84192 tp!69199))

(declare-fun array_inv!22912 (array!61903) Bool)

(assert (=> start!84192 (array_inv!22912 _keys!1544)))

(declare-fun mapNonEmpty!36479 () Bool)

(declare-fun mapRes!36479 () Bool)

(declare-fun tp!69200 () Bool)

(declare-fun e!554775 () Bool)

(assert (=> mapNonEmpty!36479 (= mapRes!36479 (and tp!69200 e!554775))))

(declare-fun mapKey!36479 () (_ BitVec 32))

(declare-fun mapRest!36479 () (Array (_ BitVec 32) ValueCell!11002))

(declare-fun mapValue!36479 () ValueCell!11002)

(assert (=> mapNonEmpty!36479 (= (arr!29806 _values!1278) (store mapRest!36479 mapKey!36479 mapValue!36479))))

(declare-fun b!984029 () Bool)

(declare-fun e!554776 () Bool)

(assert (=> b!984029 (= e!554776 (not true))))

(declare-datatypes ((tuple2!14850 0))(
  ( (tuple2!14851 (_1!7435 (_ BitVec 64)) (_2!7435 V!35605)) )
))
(declare-datatypes ((List!20771 0))(
  ( (Nil!20768) (Cons!20767 (h!21929 tuple2!14850) (t!29588 List!20771)) )
))
(declare-datatypes ((ListLongMap!13561 0))(
  ( (ListLongMap!13562 (toList!6796 List!20771)) )
))
(declare-fun lt!436649 () ListLongMap!13561)

(declare-fun lt!436647 () tuple2!14850)

(declare-fun lt!436651 () tuple2!14850)

(declare-fun +!2989 (ListLongMap!13561 tuple2!14850) ListLongMap!13561)

(assert (=> b!984029 (= (+!2989 (+!2989 lt!436649 lt!436647) lt!436651) (+!2989 (+!2989 lt!436649 lt!436651) lt!436647))))

(declare-fun lt!436650 () V!35605)

(assert (=> b!984029 (= lt!436651 (tuple2!14851 (select (arr!29805 _keys!1544) from!1932) lt!436650))))

(declare-fun minValue!1220 () V!35605)

(assert (=> b!984029 (= lt!436647 (tuple2!14851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32653 0))(
  ( (Unit!32654) )
))
(declare-fun lt!436648 () Unit!32653)

(declare-fun addCommutativeForDiffKeys!651 (ListLongMap!13561 (_ BitVec 64) V!35605 (_ BitVec 64) V!35605) Unit!32653)

(assert (=> b!984029 (= lt!436648 (addCommutativeForDiffKeys!651 lt!436649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29805 _keys!1544) from!1932) lt!436650))))

(declare-fun b!984030 () Bool)

(assert (=> b!984030 (= e!554775 tp_is_empty!22967)))

(declare-fun b!984031 () Bool)

(declare-fun res!658569 () Bool)

(assert (=> b!984031 (=> (not res!658569) (not e!554778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61903 (_ BitVec 32)) Bool)

(assert (=> b!984031 (= res!658569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984032 () Bool)

(declare-fun res!658570 () Bool)

(assert (=> b!984032 (=> (not res!658570) (not e!554778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984032 (= res!658570 (validKeyInArray!0 (select (arr!29805 _keys!1544) from!1932)))))

(declare-fun b!984033 () Bool)

(assert (=> b!984033 (= e!554777 (and e!554779 mapRes!36479))))

(declare-fun condMapEmpty!36479 () Bool)

(declare-fun mapDefault!36479 () ValueCell!11002)

