; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36902 () Bool)

(assert start!36902)

(declare-fun b_free!8021 () Bool)

(declare-fun b_next!8021 () Bool)

(assert (=> start!36902 (= b_free!8021 (not b_next!8021))))

(declare-fun tp!28778 () Bool)

(declare-fun b_and!15281 () Bool)

(assert (=> start!36902 (= tp!28778 b_and!15281)))

(declare-fun b!369254 () Bool)

(declare-fun res!207215 () Bool)

(declare-fun e!225691 () Bool)

(assert (=> b!369254 (=> (not res!207215) (not e!225691))))

(declare-datatypes ((array!21261 0))(
  ( (array!21262 (arr!10096 (Array (_ BitVec 32) (_ BitVec 64))) (size!10448 (_ BitVec 32))) )
))
(declare-fun lt!169702 () array!21261)

(declare-datatypes ((List!5661 0))(
  ( (Nil!5658) (Cons!5657 (h!6513 (_ BitVec 64)) (t!10819 List!5661)) )
))
(declare-fun arrayNoDuplicates!0 (array!21261 (_ BitVec 32) List!5661) Bool)

(assert (=> b!369254 (= res!207215 (arrayNoDuplicates!0 lt!169702 #b00000000000000000000000000000000 Nil!5658))))

(declare-fun b!369255 () Bool)

(declare-fun e!225695 () Bool)

(declare-fun tp_is_empty!8669 () Bool)

(assert (=> b!369255 (= e!225695 tp_is_empty!8669)))

(declare-fun b!369256 () Bool)

(declare-fun res!207222 () Bool)

(declare-fun e!225693 () Bool)

(assert (=> b!369256 (=> (not res!207222) (not e!225693))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369256 (= res!207222 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!14568 () Bool)

(declare-fun mapRes!14568 () Bool)

(declare-fun tp!28779 () Bool)

(declare-fun e!225694 () Bool)

(assert (=> mapNonEmpty!14568 (= mapRes!14568 (and tp!28779 e!225694))))

(declare-datatypes ((V!12663 0))(
  ( (V!12664 (val!4379 Int)) )
))
(declare-datatypes ((ValueCell!3991 0))(
  ( (ValueCellFull!3991 (v!6572 V!12663)) (EmptyCell!3991) )
))
(declare-datatypes ((array!21263 0))(
  ( (array!21264 (arr!10097 (Array (_ BitVec 32) ValueCell!3991)) (size!10449 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21263)

(declare-fun mapValue!14568 () ValueCell!3991)

(declare-fun mapRest!14568 () (Array (_ BitVec 32) ValueCell!3991))

(declare-fun mapKey!14568 () (_ BitVec 32))

(assert (=> mapNonEmpty!14568 (= (arr!10097 _values!506) (store mapRest!14568 mapKey!14568 mapValue!14568))))

(declare-fun b!369257 () Bool)

(declare-fun e!225692 () Bool)

(assert (=> b!369257 (= e!225692 (and e!225695 mapRes!14568))))

(declare-fun condMapEmpty!14568 () Bool)

(declare-fun mapDefault!14568 () ValueCell!3991)

