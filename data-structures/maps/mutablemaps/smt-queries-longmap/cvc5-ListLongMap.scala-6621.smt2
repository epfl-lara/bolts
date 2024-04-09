; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83726 () Bool)

(assert start!83726)

(declare-fun b!977242 () Bool)

(declare-fun res!654170 () Bool)

(declare-fun e!550934 () Bool)

(assert (=> b!977242 (=> (not res!654170) (not e!550934))))

(declare-datatypes ((V!34985 0))(
  ( (V!34986 (val!11301 Int)) )
))
(declare-datatypes ((ValueCell!10769 0))(
  ( (ValueCellFull!10769 (v!13863 V!34985)) (EmptyCell!10769) )
))
(declare-datatypes ((array!61021 0))(
  ( (array!61022 (arr!29364 (Array (_ BitVec 32) ValueCell!10769)) (size!29844 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61021)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61023 0))(
  ( (array!61024 (arr!29365 (Array (_ BitVec 32) (_ BitVec 64))) (size!29845 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61023)

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!977242 (= res!654170 (and (= (size!29844 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29845 _keys!1544) (size!29844 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977243 () Bool)

(declare-fun res!654169 () Bool)

(assert (=> b!977243 (=> (not res!654169) (not e!550934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61023 (_ BitVec 32)) Bool)

(assert (=> b!977243 (= res!654169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35780 () Bool)

(declare-fun mapRes!35780 () Bool)

(assert (=> mapIsEmpty!35780 mapRes!35780))

(declare-fun b!977244 () Bool)

(declare-fun e!550933 () Bool)

(declare-fun tp_is_empty!22501 () Bool)

(assert (=> b!977244 (= e!550933 tp_is_empty!22501)))

(declare-fun b!977246 () Bool)

(assert (=> b!977246 (= e!550934 false)))

(declare-fun lt!433405 () Bool)

(declare-datatypes ((List!20497 0))(
  ( (Nil!20494) (Cons!20493 (h!21655 (_ BitVec 64)) (t!29020 List!20497)) )
))
(declare-fun arrayNoDuplicates!0 (array!61023 (_ BitVec 32) List!20497) Bool)

(assert (=> b!977246 (= lt!433405 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20494))))

(declare-fun mapNonEmpty!35780 () Bool)

(declare-fun tp!68033 () Bool)

(assert (=> mapNonEmpty!35780 (= mapRes!35780 (and tp!68033 e!550933))))

(declare-fun mapRest!35780 () (Array (_ BitVec 32) ValueCell!10769))

(declare-fun mapKey!35780 () (_ BitVec 32))

(declare-fun mapValue!35780 () ValueCell!10769)

(assert (=> mapNonEmpty!35780 (= (arr!29364 _values!1278) (store mapRest!35780 mapKey!35780 mapValue!35780))))

(declare-fun b!977247 () Bool)

(declare-fun e!550932 () Bool)

(assert (=> b!977247 (= e!550932 tp_is_empty!22501)))

(declare-fun b!977245 () Bool)

(declare-fun e!550931 () Bool)

(assert (=> b!977245 (= e!550931 (and e!550932 mapRes!35780))))

(declare-fun condMapEmpty!35780 () Bool)

(declare-fun mapDefault!35780 () ValueCell!10769)

