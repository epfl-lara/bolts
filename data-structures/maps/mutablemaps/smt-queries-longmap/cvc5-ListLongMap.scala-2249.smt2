; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36964 () Bool)

(assert start!36964)

(declare-fun b_free!8083 () Bool)

(declare-fun b_next!8083 () Bool)

(assert (=> start!36964 (= b_free!8083 (not b_next!8083))))

(declare-fun tp!28965 () Bool)

(declare-fun b_and!15343 () Bool)

(assert (=> start!36964 (= tp!28965 b_and!15343)))

(declare-fun b!370463 () Bool)

(declare-fun res!208153 () Bool)

(declare-fun e!226252 () Bool)

(assert (=> b!370463 (=> (not res!208153) (not e!226252))))

(declare-datatypes ((array!21379 0))(
  ( (array!21380 (arr!10155 (Array (_ BitVec 32) (_ BitVec 64))) (size!10507 (_ BitVec 32))) )
))
(declare-fun lt!169979 () array!21379)

(declare-datatypes ((List!5703 0))(
  ( (Nil!5700) (Cons!5699 (h!6555 (_ BitVec 64)) (t!10861 List!5703)) )
))
(declare-fun arrayNoDuplicates!0 (array!21379 (_ BitVec 32) List!5703) Bool)

(assert (=> b!370463 (= res!208153 (arrayNoDuplicates!0 lt!169979 #b00000000000000000000000000000000 Nil!5700))))

(declare-fun b!370464 () Bool)

(declare-fun res!208146 () Bool)

(declare-fun e!226250 () Bool)

(assert (=> b!370464 (=> (not res!208146) (not e!226250))))

(declare-fun _keys!658 () array!21379)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21379 (_ BitVec 32)) Bool)

(assert (=> b!370464 (= res!208146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370465 () Bool)

(declare-fun res!208152 () Bool)

(assert (=> b!370465 (=> (not res!208152) (not e!226250))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12747 0))(
  ( (V!12748 (val!4410 Int)) )
))
(declare-datatypes ((ValueCell!4022 0))(
  ( (ValueCellFull!4022 (v!6603 V!12747)) (EmptyCell!4022) )
))
(declare-datatypes ((array!21381 0))(
  ( (array!21382 (arr!10156 (Array (_ BitVec 32) ValueCell!4022)) (size!10508 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21381)

(assert (=> b!370465 (= res!208152 (and (= (size!10508 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10507 _keys!658) (size!10508 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370466 () Bool)

(declare-fun res!208147 () Bool)

(assert (=> b!370466 (=> (not res!208147) (not e!226250))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370466 (= res!208147 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!14661 () Bool)

(declare-fun mapRes!14661 () Bool)

(declare-fun tp!28964 () Bool)

(declare-fun e!226251 () Bool)

(assert (=> mapNonEmpty!14661 (= mapRes!14661 (and tp!28964 e!226251))))

(declare-fun mapValue!14661 () ValueCell!4022)

(declare-fun mapKey!14661 () (_ BitVec 32))

(declare-fun mapRest!14661 () (Array (_ BitVec 32) ValueCell!4022))

(assert (=> mapNonEmpty!14661 (= (arr!10156 _values!506) (store mapRest!14661 mapKey!14661 mapValue!14661))))

(declare-fun b!370467 () Bool)

(declare-fun e!226254 () Bool)

(declare-fun e!226249 () Bool)

(assert (=> b!370467 (= e!226254 (and e!226249 mapRes!14661))))

(declare-fun condMapEmpty!14661 () Bool)

(declare-fun mapDefault!14661 () ValueCell!4022)

