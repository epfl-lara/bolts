; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77478 () Bool)

(assert start!77478)

(declare-fun b!902482 () Bool)

(declare-fun e!505510 () Bool)

(assert (=> b!902482 (= e!505510 false)))

(declare-fun lt!407834 () Bool)

(declare-datatypes ((array!52978 0))(
  ( (array!52979 (arr!25445 (Array (_ BitVec 32) (_ BitVec 64))) (size!25905 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52978)

(declare-datatypes ((List!17967 0))(
  ( (Nil!17964) (Cons!17963 (h!19109 (_ BitVec 64)) (t!25358 List!17967)) )
))
(declare-fun arrayNoDuplicates!0 (array!52978 (_ BitVec 32) List!17967) Bool)

(assert (=> b!902482 (= lt!407834 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17964))))

(declare-fun res!609126 () Bool)

(assert (=> start!77478 (=> (not res!609126) (not e!505510))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77478 (= res!609126 (validMask!0 mask!1756))))

(assert (=> start!77478 e!505510))

(assert (=> start!77478 true))

(declare-datatypes ((V!29583 0))(
  ( (V!29584 (val!9282 Int)) )
))
(declare-datatypes ((ValueCell!8750 0))(
  ( (ValueCellFull!8750 (v!11787 V!29583)) (EmptyCell!8750) )
))
(declare-datatypes ((array!52980 0))(
  ( (array!52981 (arr!25446 (Array (_ BitVec 32) ValueCell!8750)) (size!25906 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52980)

(declare-fun e!505507 () Bool)

(declare-fun array_inv!19926 (array!52980) Bool)

(assert (=> start!77478 (and (array_inv!19926 _values!1152) e!505507)))

(declare-fun array_inv!19927 (array!52978) Bool)

(assert (=> start!77478 (array_inv!19927 _keys!1386)))

(declare-fun b!902483 () Bool)

(declare-fun res!609125 () Bool)

(assert (=> b!902483 (=> (not res!609125) (not e!505510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52978 (_ BitVec 32)) Bool)

(assert (=> b!902483 (= res!609125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29404 () Bool)

(declare-fun mapRes!29404 () Bool)

(declare-fun tp!56464 () Bool)

(declare-fun e!505509 () Bool)

(assert (=> mapNonEmpty!29404 (= mapRes!29404 (and tp!56464 e!505509))))

(declare-fun mapRest!29404 () (Array (_ BitVec 32) ValueCell!8750))

(declare-fun mapKey!29404 () (_ BitVec 32))

(declare-fun mapValue!29404 () ValueCell!8750)

(assert (=> mapNonEmpty!29404 (= (arr!25446 _values!1152) (store mapRest!29404 mapKey!29404 mapValue!29404))))

(declare-fun b!902484 () Bool)

(declare-fun tp_is_empty!18463 () Bool)

(assert (=> b!902484 (= e!505509 tp_is_empty!18463)))

(declare-fun b!902485 () Bool)

(declare-fun res!609124 () Bool)

(assert (=> b!902485 (=> (not res!609124) (not e!505510))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902485 (= res!609124 (and (= (size!25906 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25905 _keys!1386) (size!25906 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902486 () Bool)

(declare-fun e!505511 () Bool)

(assert (=> b!902486 (= e!505507 (and e!505511 mapRes!29404))))

(declare-fun condMapEmpty!29404 () Bool)

(declare-fun mapDefault!29404 () ValueCell!8750)

