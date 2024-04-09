; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83706 () Bool)

(assert start!83706)

(declare-fun mapIsEmpty!35765 () Bool)

(declare-fun mapRes!35765 () Bool)

(assert (=> mapIsEmpty!35765 mapRes!35765))

(declare-fun b!977133 () Bool)

(declare-fun e!550843 () Bool)

(declare-fun tp_is_empty!22493 () Bool)

(assert (=> b!977133 (= e!550843 tp_is_empty!22493)))

(declare-fun b!977134 () Bool)

(declare-fun e!550844 () Bool)

(declare-fun e!550840 () Bool)

(assert (=> b!977134 (= e!550844 e!550840)))

(declare-fun res!654111 () Bool)

(assert (=> b!977134 (=> res!654111 e!550840)))

(declare-datatypes ((List!20493 0))(
  ( (Nil!20490) (Cons!20489 (h!21651 (_ BitVec 64)) (t!29016 List!20493)) )
))
(declare-fun contains!5715 (List!20493 (_ BitVec 64)) Bool)

(assert (=> b!977134 (= res!654111 (contains!5715 Nil!20490 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!35765 () Bool)

(declare-fun tp!68018 () Bool)

(assert (=> mapNonEmpty!35765 (= mapRes!35765 (and tp!68018 e!550843))))

(declare-datatypes ((V!34973 0))(
  ( (V!34974 (val!11297 Int)) )
))
(declare-datatypes ((ValueCell!10765 0))(
  ( (ValueCellFull!10765 (v!13858 V!34973)) (EmptyCell!10765) )
))
(declare-datatypes ((array!61003 0))(
  ( (array!61004 (arr!29356 (Array (_ BitVec 32) ValueCell!10765)) (size!29836 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61003)

(declare-fun mapRest!35765 () (Array (_ BitVec 32) ValueCell!10765))

(declare-fun mapValue!35765 () ValueCell!10765)

(declare-fun mapKey!35765 () (_ BitVec 32))

(assert (=> mapNonEmpty!35765 (= (arr!29356 _values!1278) (store mapRest!35765 mapKey!35765 mapValue!35765))))

(declare-fun b!977136 () Bool)

(declare-fun e!550841 () Bool)

(assert (=> b!977136 (= e!550841 tp_is_empty!22493)))

(declare-fun b!977137 () Bool)

(declare-fun res!654114 () Bool)

(assert (=> b!977137 (=> (not res!654114) (not e!550844))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61005 0))(
  ( (array!61006 (arr!29357 (Array (_ BitVec 32) (_ BitVec 64))) (size!29837 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61005)

(assert (=> b!977137 (= res!654114 (and (= (size!29836 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29837 _keys!1544) (size!29836 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977138 () Bool)

(declare-fun e!550845 () Bool)

(assert (=> b!977138 (= e!550845 (and e!550841 mapRes!35765))))

(declare-fun condMapEmpty!35765 () Bool)

(declare-fun mapDefault!35765 () ValueCell!10765)

