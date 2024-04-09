; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33896 () Bool)

(assert start!33896)

(declare-fun b_free!7067 () Bool)

(declare-fun b_next!7067 () Bool)

(assert (=> start!33896 (= b_free!7067 (not b_next!7067))))

(declare-fun tp!24713 () Bool)

(declare-fun b_and!14271 () Bool)

(assert (=> start!33896 (= tp!24713 b_and!14271)))

(declare-fun b!337222 () Bool)

(declare-fun res!186347 () Bool)

(declare-fun e!206946 () Bool)

(assert (=> b!337222 (=> (not res!186347) (not e!206946))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337222 (= res!186347 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!11934 () Bool)

(declare-fun mapRes!11934 () Bool)

(assert (=> mapIsEmpty!11934 mapRes!11934))

(declare-fun b!337223 () Bool)

(declare-fun res!186340 () Bool)

(assert (=> b!337223 (=> (not res!186340) (not e!206946))))

(declare-datatypes ((array!17611 0))(
  ( (array!17612 (arr!8330 (Array (_ BitVec 32) (_ BitVec 64))) (size!8682 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17611)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17611 (_ BitVec 32)) Bool)

(assert (=> b!337223 (= res!186340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337224 () Bool)

(declare-fun e!206949 () Bool)

(assert (=> b!337224 (= e!206946 e!206949)))

(declare-fun res!186343 () Bool)

(assert (=> b!337224 (=> (not res!186343) (not e!206949))))

(declare-datatypes ((SeekEntryResult!3226 0))(
  ( (MissingZero!3226 (index!15083 (_ BitVec 32))) (Found!3226 (index!15084 (_ BitVec 32))) (Intermediate!3226 (undefined!4038 Bool) (index!15085 (_ BitVec 32)) (x!33625 (_ BitVec 32))) (Undefined!3226) (MissingVacant!3226 (index!15086 (_ BitVec 32))) )
))
(declare-fun lt!160392 () SeekEntryResult!3226)

(assert (=> b!337224 (= res!186343 (and (not (is-Found!3226 lt!160392)) (is-MissingZero!3226 lt!160392)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17611 (_ BitVec 32)) SeekEntryResult!3226)

(assert (=> b!337224 (= lt!160392 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!337225 () Bool)

(declare-fun res!186345 () Bool)

(assert (=> b!337225 (=> (not res!186345) (not e!206949))))

(declare-fun arrayContainsKey!0 (array!17611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337225 (= res!186345 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!186341 () Bool)

(assert (=> start!33896 (=> (not res!186341) (not e!206946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33896 (= res!186341 (validMask!0 mask!2385))))

(assert (=> start!33896 e!206946))

(assert (=> start!33896 true))

(declare-fun tp_is_empty!7019 () Bool)

(assert (=> start!33896 tp_is_empty!7019))

(assert (=> start!33896 tp!24713))

(declare-datatypes ((V!10335 0))(
  ( (V!10336 (val!3554 Int)) )
))
(declare-datatypes ((ValueCell!3166 0))(
  ( (ValueCellFull!3166 (v!5715 V!10335)) (EmptyCell!3166) )
))
(declare-datatypes ((array!17613 0))(
  ( (array!17614 (arr!8331 (Array (_ BitVec 32) ValueCell!3166)) (size!8683 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17613)

(declare-fun e!206945 () Bool)

(declare-fun array_inv!6172 (array!17613) Bool)

(assert (=> start!33896 (and (array_inv!6172 _values!1525) e!206945)))

(declare-fun array_inv!6173 (array!17611) Bool)

(assert (=> start!33896 (array_inv!6173 _keys!1895)))

(declare-fun b!337226 () Bool)

(assert (=> b!337226 (= e!206949 false)))

(declare-fun lt!160391 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17611 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337226 (= lt!160391 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337227 () Bool)

(declare-fun e!206947 () Bool)

(assert (=> b!337227 (= e!206947 tp_is_empty!7019)))

(declare-fun b!337228 () Bool)

(declare-fun e!206944 () Bool)

(assert (=> b!337228 (= e!206945 (and e!206944 mapRes!11934))))

(declare-fun condMapEmpty!11934 () Bool)

(declare-fun mapDefault!11934 () ValueCell!3166)

