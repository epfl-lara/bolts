; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84194 () Bool)

(assert start!84194)

(declare-fun b_free!19867 () Bool)

(declare-fun b_next!19867 () Bool)

(assert (=> start!84194 (= b_free!19867 (not b_next!19867))))

(declare-fun tp!69206 () Bool)

(declare-fun b_and!31829 () Bool)

(assert (=> start!84194 (= tp!69206 b_and!31829)))

(declare-fun b!984062 () Bool)

(declare-fun res!658591 () Bool)

(declare-fun e!554793 () Bool)

(assert (=> b!984062 (=> (not res!658591) (not e!554793))))

(declare-datatypes ((array!61907 0))(
  ( (array!61908 (arr!29807 (Array (_ BitVec 32) (_ BitVec 64))) (size!30287 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61907)

(declare-datatypes ((List!20772 0))(
  ( (Nil!20769) (Cons!20768 (h!21930 (_ BitVec 64)) (t!29591 List!20772)) )
))
(declare-fun arrayNoDuplicates!0 (array!61907 (_ BitVec 32) List!20772) Bool)

(assert (=> b!984062 (= res!658591 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20769))))

(declare-fun mapNonEmpty!36482 () Bool)

(declare-fun mapRes!36482 () Bool)

(declare-fun tp!69205 () Bool)

(declare-fun e!554796 () Bool)

(assert (=> mapNonEmpty!36482 (= mapRes!36482 (and tp!69205 e!554796))))

(declare-datatypes ((V!35609 0))(
  ( (V!35610 (val!11535 Int)) )
))
(declare-datatypes ((ValueCell!11003 0))(
  ( (ValueCellFull!11003 (v!14097 V!35609)) (EmptyCell!11003) )
))
(declare-datatypes ((array!61909 0))(
  ( (array!61910 (arr!29808 (Array (_ BitVec 32) ValueCell!11003)) (size!30288 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61909)

(declare-fun mapRest!36482 () (Array (_ BitVec 32) ValueCell!11003))

(declare-fun mapKey!36482 () (_ BitVec 32))

(declare-fun mapValue!36482 () ValueCell!11003)

(assert (=> mapNonEmpty!36482 (= (arr!29808 _values!1278) (store mapRest!36482 mapKey!36482 mapValue!36482))))

(declare-fun b!984063 () Bool)

(declare-fun e!554798 () Bool)

(assert (=> b!984063 (= e!554798 (not true))))

(declare-datatypes ((tuple2!14852 0))(
  ( (tuple2!14853 (_1!7436 (_ BitVec 64)) (_2!7436 V!35609)) )
))
(declare-datatypes ((List!20773 0))(
  ( (Nil!20770) (Cons!20769 (h!21931 tuple2!14852) (t!29592 List!20773)) )
))
(declare-datatypes ((ListLongMap!13563 0))(
  ( (ListLongMap!13564 (toList!6797 List!20773)) )
))
(declare-fun lt!436662 () ListLongMap!13563)

(declare-fun lt!436666 () tuple2!14852)

(declare-fun lt!436665 () tuple2!14852)

(declare-fun +!2990 (ListLongMap!13563 tuple2!14852) ListLongMap!13563)

(assert (=> b!984063 (= (+!2990 (+!2990 lt!436662 lt!436666) lt!436665) (+!2990 (+!2990 lt!436662 lt!436665) lt!436666))))

(declare-fun lt!436663 () V!35609)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984063 (= lt!436665 (tuple2!14853 (select (arr!29807 _keys!1544) from!1932) lt!436663))))

(declare-fun minValue!1220 () V!35609)

(assert (=> b!984063 (= lt!436666 (tuple2!14853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32655 0))(
  ( (Unit!32656) )
))
(declare-fun lt!436664 () Unit!32655)

(declare-fun addCommutativeForDiffKeys!652 (ListLongMap!13563 (_ BitVec 64) V!35609 (_ BitVec 64) V!35609) Unit!32655)

(assert (=> b!984063 (= lt!436664 (addCommutativeForDiffKeys!652 lt!436662 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29807 _keys!1544) from!1932) lt!436663))))

(declare-fun b!984064 () Bool)

(declare-fun res!658592 () Bool)

(assert (=> b!984064 (=> (not res!658592) (not e!554793))))

(assert (=> b!984064 (= res!658592 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30287 _keys!1544))))))

(declare-fun b!984066 () Bool)

(declare-fun tp_is_empty!22969 () Bool)

(assert (=> b!984066 (= e!554796 tp_is_empty!22969)))

(declare-fun b!984067 () Bool)

(declare-fun e!554794 () Bool)

(declare-fun e!554797 () Bool)

(assert (=> b!984067 (= e!554794 (and e!554797 mapRes!36482))))

(declare-fun condMapEmpty!36482 () Bool)

(declare-fun mapDefault!36482 () ValueCell!11003)

