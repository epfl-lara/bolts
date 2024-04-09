; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83796 () Bool)

(assert start!83796)

(declare-fun b_free!19577 () Bool)

(declare-fun b_next!19577 () Bool)

(assert (=> start!83796 (= b_free!19577 (not b_next!19577))))

(declare-fun tp!68173 () Bool)

(declare-fun b_and!31261 () Bool)

(assert (=> start!83796 (= tp!68173 b_and!31261)))

(declare-fun b!978055 () Bool)

(declare-fun res!654653 () Bool)

(declare-fun e!551455 () Bool)

(assert (=> b!978055 (=> (not res!654653) (not e!551455))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61159 0))(
  ( (array!61160 (arr!29433 (Array (_ BitVec 32) (_ BitVec 64))) (size!29913 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61159)

(assert (=> b!978055 (= res!654653 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29913 _keys!1544))))))

(declare-fun b!978056 () Bool)

(declare-fun res!654657 () Bool)

(assert (=> b!978056 (=> (not res!654657) (not e!551455))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61159 (_ BitVec 32)) Bool)

(assert (=> b!978056 (= res!654657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978057 () Bool)

(declare-fun res!654655 () Bool)

(assert (=> b!978057 (=> (not res!654655) (not e!551455))))

(declare-datatypes ((V!35077 0))(
  ( (V!35078 (val!11336 Int)) )
))
(declare-datatypes ((ValueCell!10804 0))(
  ( (ValueCellFull!10804 (v!13898 V!35077)) (EmptyCell!10804) )
))
(declare-datatypes ((array!61161 0))(
  ( (array!61162 (arr!29434 (Array (_ BitVec 32) ValueCell!10804)) (size!29914 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61161)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978057 (= res!654655 (and (= (size!29914 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29913 _keys!1544) (size!29914 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978058 () Bool)

(declare-fun res!654656 () Bool)

(assert (=> b!978058 (=> (not res!654656) (not e!551455))))

(declare-datatypes ((List!20530 0))(
  ( (Nil!20527) (Cons!20526 (h!21688 (_ BitVec 64)) (t!29071 List!20530)) )
))
(declare-fun arrayNoDuplicates!0 (array!61159 (_ BitVec 32) List!20530) Bool)

(assert (=> b!978058 (= res!654656 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20527))))

(declare-fun mapNonEmpty!35885 () Bool)

(declare-fun mapRes!35885 () Bool)

(declare-fun tp!68174 () Bool)

(declare-fun e!551457 () Bool)

(assert (=> mapNonEmpty!35885 (= mapRes!35885 (and tp!68174 e!551457))))

(declare-fun mapValue!35885 () ValueCell!10804)

(declare-fun mapKey!35885 () (_ BitVec 32))

(declare-fun mapRest!35885 () (Array (_ BitVec 32) ValueCell!10804))

(assert (=> mapNonEmpty!35885 (= (arr!29434 _values!1278) (store mapRest!35885 mapKey!35885 mapValue!35885))))

(declare-fun res!654654 () Bool)

(assert (=> start!83796 (=> (not res!654654) (not e!551455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83796 (= res!654654 (validMask!0 mask!1948))))

(assert (=> start!83796 e!551455))

(assert (=> start!83796 true))

(declare-fun tp_is_empty!22571 () Bool)

(assert (=> start!83796 tp_is_empty!22571))

(declare-fun e!551456 () Bool)

(declare-fun array_inv!22651 (array!61161) Bool)

(assert (=> start!83796 (and (array_inv!22651 _values!1278) e!551456)))

(assert (=> start!83796 tp!68173))

(declare-fun array_inv!22652 (array!61159) Bool)

(assert (=> start!83796 (array_inv!22652 _keys!1544)))

(declare-fun b!978059 () Bool)

(assert (=> b!978059 (= e!551455 (not true))))

(declare-datatypes ((tuple2!14630 0))(
  ( (tuple2!14631 (_1!7325 (_ BitVec 64)) (_2!7325 V!35077)) )
))
(declare-datatypes ((List!20531 0))(
  ( (Nil!20528) (Cons!20527 (h!21689 tuple2!14630) (t!29072 List!20531)) )
))
(declare-datatypes ((ListLongMap!13341 0))(
  ( (ListLongMap!13342 (toList!6686 List!20531)) )
))
(declare-fun lt!433608 () ListLongMap!13341)

(declare-fun lt!433607 () tuple2!14630)

(declare-fun lt!433605 () tuple2!14630)

(declare-fun +!2892 (ListLongMap!13341 tuple2!14630) ListLongMap!13341)

(assert (=> b!978059 (= (+!2892 (+!2892 lt!433608 lt!433607) lt!433605) (+!2892 (+!2892 lt!433608 lt!433605) lt!433607))))

(declare-fun lt!433606 () V!35077)

(assert (=> b!978059 (= lt!433605 (tuple2!14631 (select (arr!29433 _keys!1544) from!1932) lt!433606))))

(declare-fun minValue!1220 () V!35077)

(assert (=> b!978059 (= lt!433607 (tuple2!14631 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32459 0))(
  ( (Unit!32460) )
))
(declare-fun lt!433609 () Unit!32459)

(declare-fun addCommutativeForDiffKeys!554 (ListLongMap!13341 (_ BitVec 64) V!35077 (_ BitVec 64) V!35077) Unit!32459)

(assert (=> b!978059 (= lt!433609 (addCommutativeForDiffKeys!554 lt!433608 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29433 _keys!1544) from!1932) lt!433606))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15251 (ValueCell!10804 V!35077) V!35077)

(declare-fun dynLambda!1728 (Int (_ BitVec 64)) V!35077)

(assert (=> b!978059 (= lt!433606 (get!15251 (select (arr!29434 _values!1278) from!1932) (dynLambda!1728 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35077)

(declare-fun getCurrentListMapNoExtraKeys!3353 (array!61159 array!61161 (_ BitVec 32) (_ BitVec 32) V!35077 V!35077 (_ BitVec 32) Int) ListLongMap!13341)

(assert (=> b!978059 (= lt!433608 (+!2892 (getCurrentListMapNoExtraKeys!3353 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14631 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978060 () Bool)

(declare-fun e!551459 () Bool)

(assert (=> b!978060 (= e!551456 (and e!551459 mapRes!35885))))

(declare-fun condMapEmpty!35885 () Bool)

(declare-fun mapDefault!35885 () ValueCell!10804)

