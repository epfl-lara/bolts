; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34336 () Bool)

(assert start!34336)

(declare-fun b_free!7303 () Bool)

(declare-fun b_next!7303 () Bool)

(assert (=> start!34336 (= b_free!7303 (not b_next!7303))))

(declare-fun tp!25448 () Bool)

(declare-fun b_and!14525 () Bool)

(assert (=> start!34336 (= tp!25448 b_and!14525)))

(declare-fun b!342492 () Bool)

(declare-fun e!210033 () Bool)

(declare-fun e!210031 () Bool)

(assert (=> b!342492 (= e!210033 e!210031)))

(declare-fun res!189393 () Bool)

(assert (=> b!342492 (=> (not res!189393) (not e!210031))))

(declare-datatypes ((SeekEntryResult!3299 0))(
  ( (MissingZero!3299 (index!15375 (_ BitVec 32))) (Found!3299 (index!15376 (_ BitVec 32))) (Intermediate!3299 (undefined!4111 Bool) (index!15377 (_ BitVec 32)) (x!34108 (_ BitVec 32))) (Undefined!3299) (MissingVacant!3299 (index!15378 (_ BitVec 32))) )
))
(declare-fun lt!162182 () SeekEntryResult!3299)

(assert (=> b!342492 (= res!189393 (and (not (is-Found!3299 lt!162182)) (not (is-MissingZero!3299 lt!162182)) (is-MissingVacant!3299 lt!162182)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18077 0))(
  ( (array!18078 (arr!8554 (Array (_ BitVec 32) (_ BitVec 64))) (size!8906 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18077)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18077 (_ BitVec 32)) SeekEntryResult!3299)

(assert (=> b!342492 (= lt!162182 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342494 () Bool)

(assert (=> b!342494 (= e!210031 false)))

(declare-datatypes ((Unit!10675 0))(
  ( (Unit!10676) )
))
(declare-fun lt!162183 () Unit!10675)

(declare-fun e!210034 () Unit!10675)

(assert (=> b!342494 (= lt!162183 e!210034)))

(declare-fun c!52757 () Bool)

(declare-fun arrayContainsKey!0 (array!18077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342494 (= c!52757 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342495 () Bool)

(declare-fun e!210032 () Bool)

(declare-fun tp_is_empty!7255 () Bool)

(assert (=> b!342495 (= e!210032 tp_is_empty!7255)))

(declare-fun b!342496 () Bool)

(declare-fun res!189398 () Bool)

(assert (=> b!342496 (=> (not res!189398) (not e!210033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18077 (_ BitVec 32)) Bool)

(assert (=> b!342496 (= res!189398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342497 () Bool)

(declare-fun res!189392 () Bool)

(assert (=> b!342497 (=> (not res!189392) (not e!210033))))

(declare-datatypes ((List!4953 0))(
  ( (Nil!4950) (Cons!4949 (h!5805 (_ BitVec 64)) (t!10073 List!4953)) )
))
(declare-fun arrayNoDuplicates!0 (array!18077 (_ BitVec 32) List!4953) Bool)

(assert (=> b!342497 (= res!189392 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4950))))

(declare-fun b!342498 () Bool)

(declare-fun res!189395 () Bool)

(assert (=> b!342498 (=> (not res!189395) (not e!210033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342498 (= res!189395 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12315 () Bool)

(declare-fun mapRes!12315 () Bool)

(declare-fun tp!25449 () Bool)

(assert (=> mapNonEmpty!12315 (= mapRes!12315 (and tp!25449 e!210032))))

(declare-datatypes ((V!10651 0))(
  ( (V!10652 (val!3672 Int)) )
))
(declare-datatypes ((ValueCell!3284 0))(
  ( (ValueCellFull!3284 (v!5842 V!10651)) (EmptyCell!3284) )
))
(declare-datatypes ((array!18079 0))(
  ( (array!18080 (arr!8555 (Array (_ BitVec 32) ValueCell!3284)) (size!8907 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18079)

(declare-fun mapValue!12315 () ValueCell!3284)

(declare-fun mapKey!12315 () (_ BitVec 32))

(declare-fun mapRest!12315 () (Array (_ BitVec 32) ValueCell!3284))

(assert (=> mapNonEmpty!12315 (= (arr!8555 _values!1525) (store mapRest!12315 mapKey!12315 mapValue!12315))))

(declare-fun b!342499 () Bool)

(declare-fun Unit!10677 () Unit!10675)

(assert (=> b!342499 (= e!210034 Unit!10677)))

(declare-fun res!189397 () Bool)

(assert (=> start!34336 (=> (not res!189397) (not e!210033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34336 (= res!189397 (validMask!0 mask!2385))))

(assert (=> start!34336 e!210033))

(assert (=> start!34336 true))

(assert (=> start!34336 tp_is_empty!7255))

(assert (=> start!34336 tp!25448))

(declare-fun e!210036 () Bool)

(declare-fun array_inv!6324 (array!18079) Bool)

(assert (=> start!34336 (and (array_inv!6324 _values!1525) e!210036)))

(declare-fun array_inv!6325 (array!18077) Bool)

(assert (=> start!34336 (array_inv!6325 _keys!1895)))

(declare-fun b!342493 () Bool)

(declare-fun e!210035 () Bool)

(assert (=> b!342493 (= e!210035 tp_is_empty!7255)))

(declare-fun b!342500 () Bool)

(assert (=> b!342500 (= e!210036 (and e!210035 mapRes!12315))))

(declare-fun condMapEmpty!12315 () Bool)

(declare-fun mapDefault!12315 () ValueCell!3284)

