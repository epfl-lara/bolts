; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84102 () Bool)

(assert start!84102)

(declare-fun b_free!19829 () Bool)

(declare-fun b_next!19829 () Bool)

(assert (=> start!84102 (= b_free!19829 (not b_next!19829))))

(declare-fun tp!69011 () Bool)

(declare-fun b_and!31759 () Bool)

(assert (=> start!84102 (= tp!69011 b_and!31759)))

(declare-fun b!982899 () Bool)

(declare-fun res!657872 () Bool)

(declare-fun e!554058 () Bool)

(assert (=> b!982899 (=> (not res!657872) (not e!554058))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982899 (= res!657872 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!36344 () Bool)

(declare-fun mapRes!36344 () Bool)

(assert (=> mapIsEmpty!36344 mapRes!36344))

(declare-fun res!657877 () Bool)

(assert (=> start!84102 (=> (not res!657877) (not e!554058))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84102 (= res!657877 (validMask!0 mask!1948))))

(assert (=> start!84102 e!554058))

(assert (=> start!84102 true))

(declare-fun tp_is_empty!22877 () Bool)

(assert (=> start!84102 tp_is_empty!22877))

(declare-datatypes ((V!35485 0))(
  ( (V!35486 (val!11489 Int)) )
))
(declare-datatypes ((ValueCell!10957 0))(
  ( (ValueCellFull!10957 (v!14051 V!35485)) (EmptyCell!10957) )
))
(declare-datatypes ((array!61739 0))(
  ( (array!61740 (arr!29723 (Array (_ BitVec 32) ValueCell!10957)) (size!30203 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61739)

(declare-fun e!554056 () Bool)

(declare-fun array_inv!22853 (array!61739) Bool)

(assert (=> start!84102 (and (array_inv!22853 _values!1278) e!554056)))

(assert (=> start!84102 tp!69011))

(declare-datatypes ((array!61741 0))(
  ( (array!61742 (arr!29724 (Array (_ BitVec 32) (_ BitVec 64))) (size!30204 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61741)

(declare-fun array_inv!22854 (array!61741) Bool)

(assert (=> start!84102 (array_inv!22854 _keys!1544)))

(declare-fun b!982900 () Bool)

(declare-fun res!657874 () Bool)

(assert (=> b!982900 (=> (not res!657874) (not e!554058))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982900 (= res!657874 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30204 _keys!1544))))))

(declare-fun b!982901 () Bool)

(declare-fun res!657878 () Bool)

(assert (=> b!982901 (=> (not res!657878) (not e!554058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982901 (= res!657878 (validKeyInArray!0 (select (arr!29724 _keys!1544) from!1932)))))

(declare-fun b!982902 () Bool)

(declare-fun e!554060 () Bool)

(assert (=> b!982902 (= e!554058 e!554060)))

(declare-fun res!657876 () Bool)

(assert (=> b!982902 (=> (not res!657876) (not e!554060))))

(assert (=> b!982902 (= res!657876 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29724 _keys!1544) from!1932))))))

(declare-fun lt!436344 () V!35485)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15440 (ValueCell!10957 V!35485) V!35485)

(declare-fun dynLambda!1815 (Int (_ BitVec 64)) V!35485)

(assert (=> b!982902 (= lt!436344 (get!15440 (select (arr!29723 _values!1278) from!1932) (dynLambda!1815 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35485)

(declare-datatypes ((tuple2!14824 0))(
  ( (tuple2!14825 (_1!7422 (_ BitVec 64)) (_2!7422 V!35485)) )
))
(declare-datatypes ((List!20729 0))(
  ( (Nil!20726) (Cons!20725 (h!21887 tuple2!14824) (t!29516 List!20729)) )
))
(declare-datatypes ((ListLongMap!13535 0))(
  ( (ListLongMap!13536 (toList!6783 List!20729)) )
))
(declare-fun lt!436345 () ListLongMap!13535)

(declare-fun minValue!1220 () V!35485)

(declare-fun getCurrentListMapNoExtraKeys!3442 (array!61741 array!61739 (_ BitVec 32) (_ BitVec 32) V!35485 V!35485 (_ BitVec 32) Int) ListLongMap!13535)

(assert (=> b!982902 (= lt!436345 (getCurrentListMapNoExtraKeys!3442 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982903 () Bool)

(declare-fun res!657875 () Bool)

(assert (=> b!982903 (=> (not res!657875) (not e!554058))))

(declare-datatypes ((List!20730 0))(
  ( (Nil!20727) (Cons!20726 (h!21888 (_ BitVec 64)) (t!29517 List!20730)) )
))
(declare-fun arrayNoDuplicates!0 (array!61741 (_ BitVec 32) List!20730) Bool)

(assert (=> b!982903 (= res!657875 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20727))))

(declare-fun b!982904 () Bool)

(declare-fun res!657873 () Bool)

(assert (=> b!982904 (=> (not res!657873) (not e!554058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61741 (_ BitVec 32)) Bool)

(assert (=> b!982904 (= res!657873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982905 () Bool)

(declare-fun e!554059 () Bool)

(assert (=> b!982905 (= e!554059 tp_is_empty!22877)))

(declare-fun mapNonEmpty!36344 () Bool)

(declare-fun tp!69010 () Bool)

(declare-fun e!554055 () Bool)

(assert (=> mapNonEmpty!36344 (= mapRes!36344 (and tp!69010 e!554055))))

(declare-fun mapValue!36344 () ValueCell!10957)

(declare-fun mapRest!36344 () (Array (_ BitVec 32) ValueCell!10957))

(declare-fun mapKey!36344 () (_ BitVec 32))

(assert (=> mapNonEmpty!36344 (= (arr!29723 _values!1278) (store mapRest!36344 mapKey!36344 mapValue!36344))))

(declare-fun b!982906 () Bool)

(declare-fun res!657879 () Bool)

(assert (=> b!982906 (=> (not res!657879) (not e!554058))))

(assert (=> b!982906 (= res!657879 (and (= (size!30203 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30204 _keys!1544) (size!30203 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982907 () Bool)

(assert (=> b!982907 (= e!554055 tp_is_empty!22877)))

(declare-fun b!982908 () Bool)

(assert (=> b!982908 (= e!554056 (and e!554059 mapRes!36344))))

(declare-fun condMapEmpty!36344 () Bool)

(declare-fun mapDefault!36344 () ValueCell!10957)

