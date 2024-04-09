; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75610 () Bool)

(assert start!75610)

(declare-fun b!888784 () Bool)

(declare-fun b_free!15595 () Bool)

(declare-fun b_next!15595 () Bool)

(assert (=> b!888784 (= b_free!15595 (not b_next!15595))))

(declare-fun tp!54743 () Bool)

(declare-fun b_and!25853 () Bool)

(assert (=> b!888784 (= tp!54743 b_and!25853)))

(declare-fun b!888780 () Bool)

(declare-fun e!495360 () Bool)

(declare-datatypes ((array!51806 0))(
  ( (array!51807 (arr!24908 (Array (_ BitVec 32) (_ BitVec 64))) (size!25351 (_ BitVec 32))) )
))
(declare-datatypes ((V!28863 0))(
  ( (V!28864 (val!9012 Int)) )
))
(declare-datatypes ((ValueCell!8480 0))(
  ( (ValueCellFull!8480 (v!11484 V!28863)) (EmptyCell!8480) )
))
(declare-datatypes ((array!51808 0))(
  ( (array!51809 (arr!24909 (Array (_ BitVec 32) ValueCell!8480)) (size!25352 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3976 0))(
  ( (LongMapFixedSize!3977 (defaultEntry!5185 Int) (mask!25612 (_ BitVec 32)) (extraKeys!4879 (_ BitVec 32)) (zeroValue!4983 V!28863) (minValue!4983 V!28863) (_size!2043 (_ BitVec 32)) (_keys!9862 array!51806) (_values!5170 array!51808) (_vacant!2043 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3976)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!888780 (= e!495360 (not (validMask!0 (mask!25612 thiss!1181))))))

(declare-fun b!888781 () Bool)

(declare-fun res!602541 () Bool)

(assert (=> b!888781 (=> (not res!602541) (not e!495360))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888781 (= res!602541 (not (= key!785 (bvneg key!785))))))

(declare-fun res!602540 () Bool)

(assert (=> start!75610 (=> (not res!602540) (not e!495360))))

(declare-fun valid!1538 (LongMapFixedSize!3976) Bool)

(assert (=> start!75610 (= res!602540 (valid!1538 thiss!1181))))

(assert (=> start!75610 e!495360))

(declare-fun e!495358 () Bool)

(assert (=> start!75610 e!495358))

(assert (=> start!75610 true))

(declare-fun mapIsEmpty!28428 () Bool)

(declare-fun mapRes!28428 () Bool)

(assert (=> mapIsEmpty!28428 mapRes!28428))

(declare-fun b!888782 () Bool)

(declare-fun e!495361 () Bool)

(declare-fun e!495356 () Bool)

(assert (=> b!888782 (= e!495361 (and e!495356 mapRes!28428))))

(declare-fun condMapEmpty!28428 () Bool)

(declare-fun mapDefault!28428 () ValueCell!8480)

