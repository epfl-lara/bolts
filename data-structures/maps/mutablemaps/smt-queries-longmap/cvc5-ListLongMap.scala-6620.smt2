; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83720 () Bool)

(assert start!83720)

(declare-fun b!977188 () Bool)

(declare-fun e!550889 () Bool)

(declare-fun tp_is_empty!22495 () Bool)

(assert (=> b!977188 (= e!550889 tp_is_empty!22495)))

(declare-fun b!977189 () Bool)

(declare-fun e!550888 () Bool)

(assert (=> b!977189 (= e!550888 false)))

(declare-fun lt!433396 () Bool)

(declare-datatypes ((array!61009 0))(
  ( (array!61010 (arr!29358 (Array (_ BitVec 32) (_ BitVec 64))) (size!29838 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61009)

(declare-datatypes ((List!20494 0))(
  ( (Nil!20491) (Cons!20490 (h!21652 (_ BitVec 64)) (t!29017 List!20494)) )
))
(declare-fun arrayNoDuplicates!0 (array!61009 (_ BitVec 32) List!20494) Bool)

(assert (=> b!977189 (= lt!433396 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20491))))

(declare-fun mapIsEmpty!35771 () Bool)

(declare-fun mapRes!35771 () Bool)

(assert (=> mapIsEmpty!35771 mapRes!35771))

(declare-fun mapNonEmpty!35771 () Bool)

(declare-fun tp!68024 () Bool)

(assert (=> mapNonEmpty!35771 (= mapRes!35771 (and tp!68024 e!550889))))

(declare-datatypes ((V!34977 0))(
  ( (V!34978 (val!11298 Int)) )
))
(declare-datatypes ((ValueCell!10766 0))(
  ( (ValueCellFull!10766 (v!13860 V!34977)) (EmptyCell!10766) )
))
(declare-fun mapRest!35771 () (Array (_ BitVec 32) ValueCell!10766))

(declare-fun mapValue!35771 () ValueCell!10766)

(declare-fun mapKey!35771 () (_ BitVec 32))

(declare-datatypes ((array!61011 0))(
  ( (array!61012 (arr!29359 (Array (_ BitVec 32) ValueCell!10766)) (size!29839 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61011)

(assert (=> mapNonEmpty!35771 (= (arr!29359 _values!1278) (store mapRest!35771 mapKey!35771 mapValue!35771))))

(declare-fun b!977190 () Bool)

(declare-fun res!654144 () Bool)

(assert (=> b!977190 (=> (not res!654144) (not e!550888))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977190 (= res!654144 (and (= (size!29839 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29838 _keys!1544) (size!29839 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!654142 () Bool)

(assert (=> start!83720 (=> (not res!654142) (not e!550888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83720 (= res!654142 (validMask!0 mask!1948))))

(assert (=> start!83720 e!550888))

(assert (=> start!83720 true))

(declare-fun e!550885 () Bool)

(declare-fun array_inv!22601 (array!61011) Bool)

(assert (=> start!83720 (and (array_inv!22601 _values!1278) e!550885)))

(declare-fun array_inv!22602 (array!61009) Bool)

(assert (=> start!83720 (array_inv!22602 _keys!1544)))

(declare-fun b!977191 () Bool)

(declare-fun res!654143 () Bool)

(assert (=> b!977191 (=> (not res!654143) (not e!550888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61009 (_ BitVec 32)) Bool)

(assert (=> b!977191 (= res!654143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977192 () Bool)

(declare-fun e!550887 () Bool)

(assert (=> b!977192 (= e!550887 tp_is_empty!22495)))

(declare-fun b!977193 () Bool)

(assert (=> b!977193 (= e!550885 (and e!550887 mapRes!35771))))

(declare-fun condMapEmpty!35771 () Bool)

(declare-fun mapDefault!35771 () ValueCell!10766)

