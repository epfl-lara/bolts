; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108336 () Bool)

(assert start!108336)

(declare-fun b!1278326 () Bool)

(declare-fun e!730246 () Bool)

(declare-fun tp_is_empty!33499 () Bool)

(assert (=> b!1278326 (= e!730246 tp_is_empty!33499)))

(declare-fun b!1278327 () Bool)

(declare-fun e!730248 () Bool)

(declare-datatypes ((List!28902 0))(
  ( (Nil!28899) (Cons!28898 (h!30107 (_ BitVec 64)) (t!42449 List!28902)) )
))
(declare-fun contains!7755 (List!28902 (_ BitVec 64)) Bool)

(assert (=> b!1278327 (= e!730248 (contains!7755 Nil!28899 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278328 () Bool)

(declare-fun res!849354 () Bool)

(declare-fun e!730250 () Bool)

(assert (=> b!1278328 (=> (not res!849354) (not e!730250))))

(declare-datatypes ((array!84037 0))(
  ( (array!84038 (arr!40519 (Array (_ BitVec 32) (_ BitVec 64))) (size!41070 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84037)

(assert (=> b!1278328 (= res!849354 (and (bvsle #b00000000000000000000000000000000 (size!41070 _keys!1741)) (bvslt (size!41070 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278329 () Bool)

(declare-fun res!849351 () Bool)

(assert (=> b!1278329 (=> (not res!849351) (not e!730250))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84037 (_ BitVec 32)) Bool)

(assert (=> b!1278329 (= res!849351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278330 () Bool)

(declare-fun res!849349 () Bool)

(assert (=> b!1278330 (=> (not res!849349) (not e!730250))))

(declare-fun noDuplicate!2087 (List!28902) Bool)

(assert (=> b!1278330 (= res!849349 (noDuplicate!2087 Nil!28899))))

(declare-fun res!849353 () Bool)

(assert (=> start!108336 (=> (not res!849353) (not e!730250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108336 (= res!849353 (validMask!0 mask!2175))))

(assert (=> start!108336 e!730250))

(assert (=> start!108336 true))

(declare-datatypes ((V!49769 0))(
  ( (V!49770 (val!16824 Int)) )
))
(declare-datatypes ((ValueCell!15851 0))(
  ( (ValueCellFull!15851 (v!19421 V!49769)) (EmptyCell!15851) )
))
(declare-datatypes ((array!84039 0))(
  ( (array!84040 (arr!40520 (Array (_ BitVec 32) ValueCell!15851)) (size!41071 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84039)

(declare-fun e!730245 () Bool)

(declare-fun array_inv!30755 (array!84039) Bool)

(assert (=> start!108336 (and (array_inv!30755 _values!1445) e!730245)))

(declare-fun array_inv!30756 (array!84037) Bool)

(assert (=> start!108336 (array_inv!30756 _keys!1741)))

(declare-fun b!1278331 () Bool)

(assert (=> b!1278331 (= e!730250 e!730248)))

(declare-fun res!849352 () Bool)

(assert (=> b!1278331 (=> res!849352 e!730248)))

(assert (=> b!1278331 (= res!849352 (contains!7755 Nil!28899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1278332 () Bool)

(declare-fun e!730249 () Bool)

(assert (=> b!1278332 (= e!730249 tp_is_empty!33499)))

(declare-fun b!1278333 () Bool)

(declare-fun mapRes!51797 () Bool)

(assert (=> b!1278333 (= e!730245 (and e!730246 mapRes!51797))))

(declare-fun condMapEmpty!51797 () Bool)

(declare-fun mapDefault!51797 () ValueCell!15851)

