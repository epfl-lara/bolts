; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37208 () Bool)

(assert start!37208)

(declare-fun b_free!8327 () Bool)

(declare-fun b_next!8327 () Bool)

(assert (=> start!37208 (= b_free!8327 (not b_next!8327))))

(declare-fun tp!29696 () Bool)

(declare-fun b_and!15587 () Bool)

(assert (=> start!37208 (= tp!29696 b_and!15587)))

(declare-fun b!375605 () Bool)

(declare-fun res!212200 () Bool)

(declare-fun e!228812 () Bool)

(assert (=> b!375605 (=> (not res!212200) (not e!228812))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13071 0))(
  ( (V!13072 (val!4532 Int)) )
))
(declare-datatypes ((ValueCell!4144 0))(
  ( (ValueCellFull!4144 (v!6725 V!13071)) (EmptyCell!4144) )
))
(declare-datatypes ((array!21849 0))(
  ( (array!21850 (arr!10390 (Array (_ BitVec 32) ValueCell!4144)) (size!10742 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21849)

(declare-datatypes ((array!21851 0))(
  ( (array!21852 (arr!10391 (Array (_ BitVec 32) (_ BitVec 64))) (size!10743 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21851)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375605 (= res!212200 (and (= (size!10742 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10743 _keys!658) (size!10742 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15027 () Bool)

(declare-fun mapRes!15027 () Bool)

(assert (=> mapIsEmpty!15027 mapRes!15027))

(declare-fun b!375606 () Bool)

(declare-fun res!212193 () Bool)

(assert (=> b!375606 (=> (not res!212193) (not e!228812))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375606 (= res!212193 (or (= (select (arr!10391 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10391 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375607 () Bool)

(declare-fun res!212196 () Bool)

(assert (=> b!375607 (=> (not res!212196) (not e!228812))))

(assert (=> b!375607 (= res!212196 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10743 _keys!658))))))

(declare-fun b!375608 () Bool)

(declare-fun e!228819 () Bool)

(declare-fun e!228815 () Bool)

(assert (=> b!375608 (= e!228819 (and e!228815 mapRes!15027))))

(declare-fun condMapEmpty!15027 () Bool)

(declare-fun mapDefault!15027 () ValueCell!4144)

