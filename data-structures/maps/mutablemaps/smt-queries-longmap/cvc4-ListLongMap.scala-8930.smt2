; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108324 () Bool)

(assert start!108324)

(declare-fun b!1278275 () Bool)

(declare-fun e!730211 () Bool)

(declare-fun tp_is_empty!33497 () Bool)

(assert (=> b!1278275 (= e!730211 tp_is_empty!33497)))

(declare-fun b!1278276 () Bool)

(declare-fun res!849323 () Bool)

(declare-fun e!730210 () Bool)

(assert (=> b!1278276 (=> (not res!849323) (not e!730210))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49765 0))(
  ( (V!49766 (val!16823 Int)) )
))
(declare-datatypes ((ValueCell!15850 0))(
  ( (ValueCellFull!15850 (v!19420 V!49765)) (EmptyCell!15850) )
))
(declare-datatypes ((array!84031 0))(
  ( (array!84032 (arr!40517 (Array (_ BitVec 32) ValueCell!15850)) (size!41068 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84031)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84033 0))(
  ( (array!84034 (arr!40518 (Array (_ BitVec 32) (_ BitVec 64))) (size!41069 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84033)

(assert (=> b!1278276 (= res!849323 (and (= (size!41068 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41069 _keys!1741) (size!41068 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278277 () Bool)

(declare-datatypes ((List!28901 0))(
  ( (Nil!28898) (Cons!28897 (h!30106 (_ BitVec 64)) (t!42448 List!28901)) )
))
(declare-fun noDuplicate!2086 (List!28901) Bool)

(assert (=> b!1278277 (= e!730210 (not (noDuplicate!2086 Nil!28898)))))

(declare-fun mapIsEmpty!51791 () Bool)

(declare-fun mapRes!51791 () Bool)

(assert (=> mapIsEmpty!51791 mapRes!51791))

(declare-fun b!1278278 () Bool)

(declare-fun e!730207 () Bool)

(assert (=> b!1278278 (= e!730207 tp_is_empty!33497)))

(declare-fun b!1278279 () Bool)

(declare-fun res!849322 () Bool)

(assert (=> b!1278279 (=> (not res!849322) (not e!730210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84033 (_ BitVec 32)) Bool)

(assert (=> b!1278279 (= res!849322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278280 () Bool)

(declare-fun e!730209 () Bool)

(assert (=> b!1278280 (= e!730209 (and e!730211 mapRes!51791))))

(declare-fun condMapEmpty!51791 () Bool)

(declare-fun mapDefault!51791 () ValueCell!15850)

