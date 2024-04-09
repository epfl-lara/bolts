; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108306 () Bool)

(assert start!108306)

(declare-fun b!1278157 () Bool)

(declare-fun res!849264 () Bool)

(declare-fun e!730118 () Bool)

(assert (=> b!1278157 (=> (not res!849264) (not e!730118))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49753 0))(
  ( (V!49754 (val!16818 Int)) )
))
(declare-datatypes ((ValueCell!15845 0))(
  ( (ValueCellFull!15845 (v!19415 V!49753)) (EmptyCell!15845) )
))
(declare-datatypes ((array!84009 0))(
  ( (array!84010 (arr!40507 (Array (_ BitVec 32) ValueCell!15845)) (size!41058 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84009)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84011 0))(
  ( (array!84012 (arr!40508 (Array (_ BitVec 32) (_ BitVec 64))) (size!41059 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84011)

(assert (=> b!1278157 (= res!849264 (and (= (size!41058 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41059 _keys!1741) (size!41058 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278158 () Bool)

(declare-fun res!849263 () Bool)

(assert (=> b!1278158 (=> (not res!849263) (not e!730118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84011 (_ BitVec 32)) Bool)

(assert (=> b!1278158 (= res!849263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!51773 () Bool)

(declare-fun mapRes!51773 () Bool)

(declare-fun tp!98748 () Bool)

(declare-fun e!730121 () Bool)

(assert (=> mapNonEmpty!51773 (= mapRes!51773 (and tp!98748 e!730121))))

(declare-fun mapValue!51773 () ValueCell!15845)

(declare-fun mapRest!51773 () (Array (_ BitVec 32) ValueCell!15845))

(declare-fun mapKey!51773 () (_ BitVec 32))

(assert (=> mapNonEmpty!51773 (= (arr!40507 _values!1445) (store mapRest!51773 mapKey!51773 mapValue!51773))))

(declare-fun b!1278159 () Bool)

(declare-fun e!730120 () Bool)

(declare-fun tp_is_empty!33487 () Bool)

(assert (=> b!1278159 (= e!730120 tp_is_empty!33487)))

(declare-fun b!1278160 () Bool)

(assert (=> b!1278160 (= e!730118 (and (bvsle #b00000000000000000000000000000000 (size!41059 _keys!1741)) (bvsge (size!41059 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278161 () Bool)

(declare-fun e!730117 () Bool)

(assert (=> b!1278161 (= e!730117 (and e!730120 mapRes!51773))))

(declare-fun condMapEmpty!51773 () Bool)

(declare-fun mapDefault!51773 () ValueCell!15845)

