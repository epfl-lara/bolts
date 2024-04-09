; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84158 () Bool)

(assert start!84158)

(declare-fun b!983513 () Bool)

(declare-fun e!554495 () Bool)

(declare-fun tp_is_empty!22933 () Bool)

(assert (=> b!983513 (= e!554495 tp_is_empty!22933)))

(declare-fun b!983514 () Bool)

(declare-fun res!658220 () Bool)

(declare-fun e!554494 () Bool)

(assert (=> b!983514 (=> (not res!658220) (not e!554494))))

(declare-datatypes ((array!61837 0))(
  ( (array!61838 (arr!29772 (Array (_ BitVec 32) (_ BitVec 64))) (size!30252 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61837)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61837 (_ BitVec 32)) Bool)

(assert (=> b!983514 (= res!658220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983515 () Bool)

(assert (=> b!983515 (= e!554494 false)))

(declare-fun lt!436501 () Bool)

(declare-datatypes ((List!20749 0))(
  ( (Nil!20746) (Cons!20745 (h!21907 (_ BitVec 64)) (t!29548 List!20749)) )
))
(declare-fun arrayNoDuplicates!0 (array!61837 (_ BitVec 32) List!20749) Bool)

(assert (=> b!983515 (= lt!436501 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20746))))

(declare-fun res!658221 () Bool)

(assert (=> start!84158 (=> (not res!658221) (not e!554494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84158 (= res!658221 (validMask!0 mask!1948))))

(assert (=> start!84158 e!554494))

(assert (=> start!84158 true))

(declare-datatypes ((V!35561 0))(
  ( (V!35562 (val!11517 Int)) )
))
(declare-datatypes ((ValueCell!10985 0))(
  ( (ValueCellFull!10985 (v!14079 V!35561)) (EmptyCell!10985) )
))
(declare-datatypes ((array!61839 0))(
  ( (array!61840 (arr!29773 (Array (_ BitVec 32) ValueCell!10985)) (size!30253 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61839)

(declare-fun e!554497 () Bool)

(declare-fun array_inv!22887 (array!61839) Bool)

(assert (=> start!84158 (and (array_inv!22887 _values!1278) e!554497)))

(declare-fun array_inv!22888 (array!61837) Bool)

(assert (=> start!84158 (array_inv!22888 _keys!1544)))

(declare-fun b!983512 () Bool)

(declare-fun res!658219 () Bool)

(assert (=> b!983512 (=> (not res!658219) (not e!554494))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983512 (= res!658219 (and (= (size!30253 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30252 _keys!1544) (size!30253 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36428 () Bool)

(declare-fun mapRes!36428 () Bool)

(assert (=> mapIsEmpty!36428 mapRes!36428))

(declare-fun b!983516 () Bool)

(declare-fun e!554496 () Bool)

(assert (=> b!983516 (= e!554496 tp_is_empty!22933)))

(declare-fun mapNonEmpty!36428 () Bool)

(declare-fun tp!69113 () Bool)

(assert (=> mapNonEmpty!36428 (= mapRes!36428 (and tp!69113 e!554495))))

(declare-fun mapValue!36428 () ValueCell!10985)

(declare-fun mapKey!36428 () (_ BitVec 32))

(declare-fun mapRest!36428 () (Array (_ BitVec 32) ValueCell!10985))

(assert (=> mapNonEmpty!36428 (= (arr!29773 _values!1278) (store mapRest!36428 mapKey!36428 mapValue!36428))))

(declare-fun b!983517 () Bool)

(assert (=> b!983517 (= e!554497 (and e!554496 mapRes!36428))))

(declare-fun condMapEmpty!36428 () Bool)

(declare-fun mapDefault!36428 () ValueCell!10985)

