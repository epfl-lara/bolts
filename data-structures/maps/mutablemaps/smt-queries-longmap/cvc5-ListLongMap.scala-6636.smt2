; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83816 () Bool)

(assert start!83816)

(declare-fun b_free!19597 () Bool)

(declare-fun b_next!19597 () Bool)

(assert (=> start!83816 (= b_free!19597 (not b_next!19597))))

(declare-fun tp!68234 () Bool)

(declare-fun b_and!31301 () Bool)

(assert (=> start!83816 (= tp!68234 b_and!31301)))

(declare-fun b!978375 () Bool)

(declare-fun res!654862 () Bool)

(declare-fun e!551607 () Bool)

(assert (=> b!978375 (=> (not res!654862) (not e!551607))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35105 0))(
  ( (V!35106 (val!11346 Int)) )
))
(declare-datatypes ((ValueCell!10814 0))(
  ( (ValueCellFull!10814 (v!13908 V!35105)) (EmptyCell!10814) )
))
(declare-datatypes ((array!61197 0))(
  ( (array!61198 (arr!29452 (Array (_ BitVec 32) ValueCell!10814)) (size!29932 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61197)

(declare-datatypes ((array!61199 0))(
  ( (array!61200 (arr!29453 (Array (_ BitVec 32) (_ BitVec 64))) (size!29933 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61199)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978375 (= res!654862 (and (= (size!29932 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29933 _keys!1544) (size!29932 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978376 () Bool)

(declare-fun res!654861 () Bool)

(assert (=> b!978376 (=> (not res!654861) (not e!551607))))

(assert (=> b!978376 (= res!654861 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978377 () Bool)

(declare-fun res!654866 () Bool)

(assert (=> b!978377 (=> (not res!654866) (not e!551607))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978377 (= res!654866 (validKeyInArray!0 (select (arr!29453 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!35915 () Bool)

(declare-fun mapRes!35915 () Bool)

(declare-fun tp!68233 () Bool)

(declare-fun e!551605 () Bool)

(assert (=> mapNonEmpty!35915 (= mapRes!35915 (and tp!68233 e!551605))))

(declare-fun mapRest!35915 () (Array (_ BitVec 32) ValueCell!10814))

(declare-fun mapKey!35915 () (_ BitVec 32))

(declare-fun mapValue!35915 () ValueCell!10814)

(assert (=> mapNonEmpty!35915 (= (arr!29452 _values!1278) (store mapRest!35915 mapKey!35915 mapValue!35915))))

(declare-fun res!654864 () Bool)

(assert (=> start!83816 (=> (not res!654864) (not e!551607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83816 (= res!654864 (validMask!0 mask!1948))))

(assert (=> start!83816 e!551607))

(assert (=> start!83816 true))

(declare-fun tp_is_empty!22591 () Bool)

(assert (=> start!83816 tp_is_empty!22591))

(declare-fun e!551609 () Bool)

(declare-fun array_inv!22665 (array!61197) Bool)

(assert (=> start!83816 (and (array_inv!22665 _values!1278) e!551609)))

(assert (=> start!83816 tp!68234))

(declare-fun array_inv!22666 (array!61199) Bool)

(assert (=> start!83816 (array_inv!22666 _keys!1544)))

(declare-fun b!978378 () Bool)

(declare-fun e!551606 () Bool)

(assert (=> b!978378 (= e!551606 tp_is_empty!22591)))

(declare-fun mapIsEmpty!35915 () Bool)

(assert (=> mapIsEmpty!35915 mapRes!35915))

(declare-fun b!978379 () Bool)

(declare-fun res!654867 () Bool)

(assert (=> b!978379 (=> (not res!654867) (not e!551607))))

(declare-datatypes ((List!20546 0))(
  ( (Nil!20543) (Cons!20542 (h!21704 (_ BitVec 64)) (t!29107 List!20546)) )
))
(declare-fun arrayNoDuplicates!0 (array!61199 (_ BitVec 32) List!20546) Bool)

(assert (=> b!978379 (= res!654867 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20543))))

(declare-fun b!978380 () Bool)

(assert (=> b!978380 (= e!551607 (not true))))

(declare-datatypes ((tuple2!14646 0))(
  ( (tuple2!14647 (_1!7333 (_ BitVec 64)) (_2!7333 V!35105)) )
))
(declare-datatypes ((List!20547 0))(
  ( (Nil!20544) (Cons!20543 (h!21705 tuple2!14646) (t!29108 List!20547)) )
))
(declare-datatypes ((ListLongMap!13357 0))(
  ( (ListLongMap!13358 (toList!6694 List!20547)) )
))
(declare-fun lt!433758 () ListLongMap!13357)

(declare-fun lt!433759 () tuple2!14646)

(declare-fun lt!433757 () tuple2!14646)

(declare-fun +!2900 (ListLongMap!13357 tuple2!14646) ListLongMap!13357)

(assert (=> b!978380 (= (+!2900 (+!2900 lt!433758 lt!433759) lt!433757) (+!2900 (+!2900 lt!433758 lt!433757) lt!433759))))

(declare-fun lt!433756 () V!35105)

(assert (=> b!978380 (= lt!433757 (tuple2!14647 (select (arr!29453 _keys!1544) from!1932) lt!433756))))

(declare-fun minValue!1220 () V!35105)

(assert (=> b!978380 (= lt!433759 (tuple2!14647 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32475 0))(
  ( (Unit!32476) )
))
(declare-fun lt!433755 () Unit!32475)

(declare-fun addCommutativeForDiffKeys!562 (ListLongMap!13357 (_ BitVec 64) V!35105 (_ BitVec 64) V!35105) Unit!32475)

(assert (=> b!978380 (= lt!433755 (addCommutativeForDiffKeys!562 lt!433758 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29453 _keys!1544) from!1932) lt!433756))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15267 (ValueCell!10814 V!35105) V!35105)

(declare-fun dynLambda!1736 (Int (_ BitVec 64)) V!35105)

(assert (=> b!978380 (= lt!433756 (get!15267 (select (arr!29452 _values!1278) from!1932) (dynLambda!1736 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35105)

(declare-fun getCurrentListMapNoExtraKeys!3361 (array!61199 array!61197 (_ BitVec 32) (_ BitVec 32) V!35105 V!35105 (_ BitVec 32) Int) ListLongMap!13357)

(assert (=> b!978380 (= lt!433758 (+!2900 (getCurrentListMapNoExtraKeys!3361 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978381 () Bool)

(declare-fun res!654863 () Bool)

(assert (=> b!978381 (=> (not res!654863) (not e!551607))))

(assert (=> b!978381 (= res!654863 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29933 _keys!1544))))))

(declare-fun b!978382 () Bool)

(assert (=> b!978382 (= e!551605 tp_is_empty!22591)))

(declare-fun b!978383 () Bool)

(declare-fun res!654865 () Bool)

(assert (=> b!978383 (=> (not res!654865) (not e!551607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61199 (_ BitVec 32)) Bool)

(assert (=> b!978383 (= res!654865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978384 () Bool)

(assert (=> b!978384 (= e!551609 (and e!551606 mapRes!35915))))

(declare-fun condMapEmpty!35915 () Bool)

(declare-fun mapDefault!35915 () ValueCell!10814)

