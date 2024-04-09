; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!830 () Bool)

(assert start!830)

(declare-fun b_free!223 () Bool)

(declare-fun b_next!223 () Bool)

(assert (=> start!830 (= b_free!223 (not b_next!223))))

(declare-fun tp!899 () Bool)

(declare-fun b_and!369 () Bool)

(assert (=> start!830 (= tp!899 b_and!369)))

(declare-fun b!6509 () Bool)

(declare-fun res!6866 () Bool)

(declare-fun e!3583 () Bool)

(assert (=> b!6509 (=> (not res!6866) (not e!3583))))

(declare-datatypes ((array!535 0))(
  ( (array!536 (arr!256 (Array (_ BitVec 32) (_ BitVec 64))) (size!318 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!535)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!535 (_ BitVec 32)) Bool)

(assert (=> b!6509 (= res!6866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6510 () Bool)

(declare-fun e!3581 () Bool)

(assert (=> b!6510 (= e!3581 true)))

(declare-datatypes ((SeekEntryResult!20 0))(
  ( (MissingZero!20 (index!2199 (_ BitVec 32))) (Found!20 (index!2200 (_ BitVec 32))) (Intermediate!20 (undefined!832 Bool) (index!2201 (_ BitVec 32)) (x!2534 (_ BitVec 32))) (Undefined!20) (MissingVacant!20 (index!2202 (_ BitVec 32))) )
))
(declare-fun lt!1228 () SeekEntryResult!20)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!535 (_ BitVec 32)) SeekEntryResult!20)

(assert (=> b!6510 (= lt!1228 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6511 () Bool)

(declare-fun res!6861 () Bool)

(assert (=> b!6511 (=> (not res!6861) (not e!3583))))

(declare-datatypes ((List!168 0))(
  ( (Nil!165) (Cons!164 (h!730 (_ BitVec 64)) (t!2303 List!168)) )
))
(declare-fun arrayNoDuplicates!0 (array!535 (_ BitVec 32) List!168) Bool)

(assert (=> b!6511 (= res!6861 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!165))))

(declare-fun b!6512 () Bool)

(declare-fun e!3587 () Bool)

(declare-fun e!3586 () Bool)

(declare-fun mapRes!422 () Bool)

(assert (=> b!6512 (= e!3587 (and e!3586 mapRes!422))))

(declare-fun condMapEmpty!422 () Bool)

(declare-datatypes ((V!579 0))(
  ( (V!580 (val!156 Int)) )
))
(declare-datatypes ((ValueCell!134 0))(
  ( (ValueCellFull!134 (v!1247 V!579)) (EmptyCell!134) )
))
(declare-datatypes ((array!537 0))(
  ( (array!538 (arr!257 (Array (_ BitVec 32) ValueCell!134)) (size!319 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!537)

(declare-fun mapDefault!422 () ValueCell!134)

