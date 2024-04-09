; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!818 () Bool)

(assert start!818)

(declare-fun b_free!211 () Bool)

(declare-fun b_next!211 () Bool)

(assert (=> start!818 (= b_free!211 (not b_next!211))))

(declare-fun tp!862 () Bool)

(declare-fun b_and!357 () Bool)

(assert (=> start!818 (= tp!862 b_and!357)))

(declare-fun b!6275 () Bool)

(declare-fun res!6718 () Bool)

(declare-fun e!3443 () Bool)

(assert (=> b!6275 (=> (not res!6718) (not e!3443))))

(declare-datatypes ((array!511 0))(
  ( (array!512 (arr!244 (Array (_ BitVec 32) (_ BitVec 64))) (size!306 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!511)

(declare-datatypes ((List!158 0))(
  ( (Nil!155) (Cons!154 (h!720 (_ BitVec 64)) (t!2293 List!158)) )
))
(declare-fun arrayNoDuplicates!0 (array!511 (_ BitVec 32) List!158) Bool)

(assert (=> b!6275 (= res!6718 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!155))))

(declare-fun b!6276 () Bool)

(declare-fun res!6719 () Bool)

(assert (=> b!6276 (=> (not res!6719) (not e!3443))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!511 (_ BitVec 32)) Bool)

(assert (=> b!6276 (= res!6719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!6717 () Bool)

(assert (=> start!818 (=> (not res!6717) (not e!3443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!818 (= res!6717 (validMask!0 mask!2250))))

(assert (=> start!818 e!3443))

(assert (=> start!818 tp!862))

(assert (=> start!818 true))

(declare-datatypes ((V!563 0))(
  ( (V!564 (val!150 Int)) )
))
(declare-datatypes ((ValueCell!128 0))(
  ( (ValueCellFull!128 (v!1241 V!563)) (EmptyCell!128) )
))
(declare-datatypes ((array!513 0))(
  ( (array!514 (arr!245 (Array (_ BitVec 32) ValueCell!128)) (size!307 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!513)

(declare-fun e!3440 () Bool)

(declare-fun array_inv!173 (array!513) Bool)

(assert (=> start!818 (and (array_inv!173 _values!1492) e!3440)))

(declare-fun tp_is_empty!289 () Bool)

(assert (=> start!818 tp_is_empty!289))

(declare-fun array_inv!174 (array!511) Bool)

(assert (=> start!818 (array_inv!174 _keys!1806)))

(declare-fun b!6277 () Bool)

(declare-fun e!3442 () Bool)

(assert (=> b!6277 (= e!3442 true)))

(declare-fun k!1278 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!15 0))(
  ( (MissingZero!15 (index!2179 (_ BitVec 32))) (Found!15 (index!2180 (_ BitVec 32))) (Intermediate!15 (undefined!827 Bool) (index!2181 (_ BitVec 32)) (x!2513 (_ BitVec 32))) (Undefined!15) (MissingVacant!15 (index!2182 (_ BitVec 32))) )
))
(declare-fun lt!1155 () SeekEntryResult!15)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!511 (_ BitVec 32)) SeekEntryResult!15)

(assert (=> b!6277 (= lt!1155 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6278 () Bool)

(declare-fun e!3439 () Bool)

(declare-fun mapRes!404 () Bool)

(assert (=> b!6278 (= e!3440 (and e!3439 mapRes!404))))

(declare-fun condMapEmpty!404 () Bool)

(declare-fun mapDefault!404 () ValueCell!128)

