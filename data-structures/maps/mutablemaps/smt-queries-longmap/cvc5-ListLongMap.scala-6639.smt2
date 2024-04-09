; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83834 () Bool)

(assert start!83834)

(declare-fun b_free!19615 () Bool)

(declare-fun b_next!19615 () Bool)

(assert (=> start!83834 (= b_free!19615 (not b_next!19615))))

(declare-fun tp!68288 () Bool)

(declare-fun b_and!31337 () Bool)

(assert (=> start!83834 (= tp!68288 b_and!31337)))

(declare-fun b!978663 () Bool)

(declare-fun e!551740 () Bool)

(assert (=> b!978663 (= e!551740 (not true))))

(declare-datatypes ((V!35129 0))(
  ( (V!35130 (val!11355 Int)) )
))
(declare-datatypes ((tuple2!14656 0))(
  ( (tuple2!14657 (_1!7338 (_ BitVec 64)) (_2!7338 V!35129)) )
))
(declare-datatypes ((List!20556 0))(
  ( (Nil!20553) (Cons!20552 (h!21714 tuple2!14656) (t!29135 List!20556)) )
))
(declare-datatypes ((ListLongMap!13367 0))(
  ( (ListLongMap!13368 (toList!6699 List!20556)) )
))
(declare-fun lt!433894 () ListLongMap!13367)

(declare-fun lt!433891 () tuple2!14656)

(declare-fun lt!433890 () tuple2!14656)

(declare-fun +!2905 (ListLongMap!13367 tuple2!14656) ListLongMap!13367)

(assert (=> b!978663 (= (+!2905 (+!2905 lt!433894 lt!433891) lt!433890) (+!2905 (+!2905 lt!433894 lt!433890) lt!433891))))

(declare-fun lt!433893 () V!35129)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61233 0))(
  ( (array!61234 (arr!29470 (Array (_ BitVec 32) (_ BitVec 64))) (size!29950 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61233)

(assert (=> b!978663 (= lt!433890 (tuple2!14657 (select (arr!29470 _keys!1544) from!1932) lt!433893))))

(declare-fun minValue!1220 () V!35129)

(assert (=> b!978663 (= lt!433891 (tuple2!14657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32485 0))(
  ( (Unit!32486) )
))
(declare-fun lt!433892 () Unit!32485)

(declare-fun addCommutativeForDiffKeys!567 (ListLongMap!13367 (_ BitVec 64) V!35129 (_ BitVec 64) V!35129) Unit!32485)

(assert (=> b!978663 (= lt!433892 (addCommutativeForDiffKeys!567 lt!433894 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29470 _keys!1544) from!1932) lt!433893))))

(declare-datatypes ((ValueCell!10823 0))(
  ( (ValueCellFull!10823 (v!13917 V!35129)) (EmptyCell!10823) )
))
(declare-datatypes ((array!61235 0))(
  ( (array!61236 (arr!29471 (Array (_ BitVec 32) ValueCell!10823)) (size!29951 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61235)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15278 (ValueCell!10823 V!35129) V!35129)

(declare-fun dynLambda!1741 (Int (_ BitVec 64)) V!35129)

(assert (=> b!978663 (= lt!433893 (get!15278 (select (arr!29471 _values!1278) from!1932) (dynLambda!1741 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35129)

(declare-fun getCurrentListMapNoExtraKeys!3366 (array!61233 array!61235 (_ BitVec 32) (_ BitVec 32) V!35129 V!35129 (_ BitVec 32) Int) ListLongMap!13367)

(assert (=> b!978663 (= lt!433894 (+!2905 (getCurrentListMapNoExtraKeys!3366 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978664 () Bool)

(declare-fun res!655054 () Bool)

(assert (=> b!978664 (=> (not res!655054) (not e!551740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978664 (= res!655054 (validKeyInArray!0 (select (arr!29470 _keys!1544) from!1932)))))

(declare-fun res!655055 () Bool)

(assert (=> start!83834 (=> (not res!655055) (not e!551740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83834 (= res!655055 (validMask!0 mask!1948))))

(assert (=> start!83834 e!551740))

(assert (=> start!83834 true))

(declare-fun tp_is_empty!22609 () Bool)

(assert (=> start!83834 tp_is_empty!22609))

(declare-fun e!551743 () Bool)

(declare-fun array_inv!22681 (array!61235) Bool)

(assert (=> start!83834 (and (array_inv!22681 _values!1278) e!551743)))

(assert (=> start!83834 tp!68288))

(declare-fun array_inv!22682 (array!61233) Bool)

(assert (=> start!83834 (array_inv!22682 _keys!1544)))

(declare-fun b!978665 () Bool)

(declare-fun res!655056 () Bool)

(assert (=> b!978665 (=> (not res!655056) (not e!551740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61233 (_ BitVec 32)) Bool)

(assert (=> b!978665 (= res!655056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35942 () Bool)

(declare-fun mapRes!35942 () Bool)

(assert (=> mapIsEmpty!35942 mapRes!35942))

(declare-fun b!978666 () Bool)

(declare-fun e!551742 () Bool)

(assert (=> b!978666 (= e!551743 (and e!551742 mapRes!35942))))

(declare-fun condMapEmpty!35942 () Bool)

(declare-fun mapDefault!35942 () ValueCell!10823)

