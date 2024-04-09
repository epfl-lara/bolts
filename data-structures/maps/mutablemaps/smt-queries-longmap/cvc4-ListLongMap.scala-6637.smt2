; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83826 () Bool)

(assert start!83826)

(declare-fun b_free!19607 () Bool)

(declare-fun b_next!19607 () Bool)

(assert (=> start!83826 (= b_free!19607 (not b_next!19607))))

(declare-fun tp!68263 () Bool)

(declare-fun b_and!31321 () Bool)

(assert (=> start!83826 (= tp!68263 b_and!31321)))

(declare-fun b!978535 () Bool)

(declare-fun res!654969 () Bool)

(declare-fun e!551680 () Bool)

(assert (=> b!978535 (=> (not res!654969) (not e!551680))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35117 0))(
  ( (V!35118 (val!11351 Int)) )
))
(declare-datatypes ((ValueCell!10819 0))(
  ( (ValueCellFull!10819 (v!13913 V!35117)) (EmptyCell!10819) )
))
(declare-datatypes ((array!61217 0))(
  ( (array!61218 (arr!29462 (Array (_ BitVec 32) ValueCell!10819)) (size!29942 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61217)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61219 0))(
  ( (array!61220 (arr!29463 (Array (_ BitVec 32) (_ BitVec 64))) (size!29943 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61219)

(assert (=> b!978535 (= res!654969 (and (= (size!29942 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29943 _keys!1544) (size!29942 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!654971 () Bool)

(assert (=> start!83826 (=> (not res!654971) (not e!551680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83826 (= res!654971 (validMask!0 mask!1948))))

(assert (=> start!83826 e!551680))

(assert (=> start!83826 true))

(declare-fun tp_is_empty!22601 () Bool)

(assert (=> start!83826 tp_is_empty!22601))

(declare-fun e!551684 () Bool)

(declare-fun array_inv!22675 (array!61217) Bool)

(assert (=> start!83826 (and (array_inv!22675 _values!1278) e!551684)))

(assert (=> start!83826 tp!68263))

(declare-fun array_inv!22676 (array!61219) Bool)

(assert (=> start!83826 (array_inv!22676 _keys!1544)))

(declare-fun b!978536 () Bool)

(assert (=> b!978536 (= e!551680 (not true))))

(declare-datatypes ((tuple2!14652 0))(
  ( (tuple2!14653 (_1!7336 (_ BitVec 64)) (_2!7336 V!35117)) )
))
(declare-datatypes ((List!20552 0))(
  ( (Nil!20549) (Cons!20548 (h!21710 tuple2!14652) (t!29123 List!20552)) )
))
(declare-datatypes ((ListLongMap!13363 0))(
  ( (ListLongMap!13364 (toList!6697 List!20552)) )
))
(declare-fun lt!433832 () ListLongMap!13363)

(declare-fun lt!433833 () tuple2!14652)

(declare-fun lt!433831 () tuple2!14652)

(declare-fun +!2903 (ListLongMap!13363 tuple2!14652) ListLongMap!13363)

(assert (=> b!978536 (= (+!2903 (+!2903 lt!433832 lt!433833) lt!433831) (+!2903 (+!2903 lt!433832 lt!433831) lt!433833))))

(declare-fun lt!433834 () V!35117)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978536 (= lt!433831 (tuple2!14653 (select (arr!29463 _keys!1544) from!1932) lt!433834))))

(declare-fun minValue!1220 () V!35117)

(assert (=> b!978536 (= lt!433833 (tuple2!14653 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32481 0))(
  ( (Unit!32482) )
))
(declare-fun lt!433830 () Unit!32481)

(declare-fun addCommutativeForDiffKeys!565 (ListLongMap!13363 (_ BitVec 64) V!35117 (_ BitVec 64) V!35117) Unit!32481)

(assert (=> b!978536 (= lt!433830 (addCommutativeForDiffKeys!565 lt!433832 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29463 _keys!1544) from!1932) lt!433834))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15272 (ValueCell!10819 V!35117) V!35117)

(declare-fun dynLambda!1739 (Int (_ BitVec 64)) V!35117)

(assert (=> b!978536 (= lt!433834 (get!15272 (select (arr!29462 _values!1278) from!1932) (dynLambda!1739 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35117)

(declare-fun getCurrentListMapNoExtraKeys!3364 (array!61219 array!61217 (_ BitVec 32) (_ BitVec 32) V!35117 V!35117 (_ BitVec 32) Int) ListLongMap!13363)

(assert (=> b!978536 (= lt!433832 (+!2903 (getCurrentListMapNoExtraKeys!3364 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978537 () Bool)

(declare-fun res!654968 () Bool)

(assert (=> b!978537 (=> (not res!654968) (not e!551680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61219 (_ BitVec 32)) Bool)

(assert (=> b!978537 (= res!654968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978538 () Bool)

(declare-fun res!654966 () Bool)

(assert (=> b!978538 (=> (not res!654966) (not e!551680))))

(assert (=> b!978538 (= res!654966 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978539 () Bool)

(declare-fun e!551681 () Bool)

(assert (=> b!978539 (= e!551681 tp_is_empty!22601)))

(declare-fun mapIsEmpty!35930 () Bool)

(declare-fun mapRes!35930 () Bool)

(assert (=> mapIsEmpty!35930 mapRes!35930))

(declare-fun b!978540 () Bool)

(declare-fun e!551683 () Bool)

(assert (=> b!978540 (= e!551683 tp_is_empty!22601)))

(declare-fun b!978541 () Bool)

(declare-fun res!654967 () Bool)

(assert (=> b!978541 (=> (not res!654967) (not e!551680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978541 (= res!654967 (validKeyInArray!0 (select (arr!29463 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!35930 () Bool)

(declare-fun tp!68264 () Bool)

(assert (=> mapNonEmpty!35930 (= mapRes!35930 (and tp!68264 e!551681))))

(declare-fun mapValue!35930 () ValueCell!10819)

(declare-fun mapKey!35930 () (_ BitVec 32))

(declare-fun mapRest!35930 () (Array (_ BitVec 32) ValueCell!10819))

(assert (=> mapNonEmpty!35930 (= (arr!29462 _values!1278) (store mapRest!35930 mapKey!35930 mapValue!35930))))

(declare-fun b!978542 () Bool)

(declare-fun res!654972 () Bool)

(assert (=> b!978542 (=> (not res!654972) (not e!551680))))

(assert (=> b!978542 (= res!654972 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29943 _keys!1544))))))

(declare-fun b!978543 () Bool)

(assert (=> b!978543 (= e!551684 (and e!551683 mapRes!35930))))

(declare-fun condMapEmpty!35930 () Bool)

(declare-fun mapDefault!35930 () ValueCell!10819)

