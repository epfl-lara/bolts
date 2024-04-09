; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37078 () Bool)

(assert start!37078)

(declare-fun b_free!8197 () Bool)

(declare-fun b_next!8197 () Bool)

(assert (=> start!37078 (= b_free!8197 (not b_next!8197))))

(declare-fun tp!29307 () Bool)

(declare-fun b_and!15457 () Bool)

(assert (=> start!37078 (= tp!29307 b_and!15457)))

(declare-fun mapIsEmpty!14832 () Bool)

(declare-fun mapRes!14832 () Bool)

(assert (=> mapIsEmpty!14832 mapRes!14832))

(declare-fun b!372686 () Bool)

(declare-fun res!209855 () Bool)

(declare-fun e!227278 () Bool)

(assert (=> b!372686 (=> (not res!209855) (not e!227278))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12899 0))(
  ( (V!12900 (val!4467 Int)) )
))
(declare-datatypes ((ValueCell!4079 0))(
  ( (ValueCellFull!4079 (v!6660 V!12899)) (EmptyCell!4079) )
))
(declare-datatypes ((array!21597 0))(
  ( (array!21598 (arr!10264 (Array (_ BitVec 32) ValueCell!4079)) (size!10616 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21597)

(declare-datatypes ((array!21599 0))(
  ( (array!21600 (arr!10265 (Array (_ BitVec 32) (_ BitVec 64))) (size!10617 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21599)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!372686 (= res!209855 (and (= (size!10616 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10617 _keys!658) (size!10616 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372687 () Bool)

(declare-fun res!209864 () Bool)

(assert (=> b!372687 (=> (not res!209864) (not e!227278))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372687 (= res!209864 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372688 () Bool)

(declare-fun e!227277 () Bool)

(declare-fun tp_is_empty!8845 () Bool)

(assert (=> b!372688 (= e!227277 tp_is_empty!8845)))

(declare-fun b!372689 () Bool)

(declare-fun res!209863 () Bool)

(assert (=> b!372689 (=> (not res!209863) (not e!227278))))

(declare-datatypes ((List!5778 0))(
  ( (Nil!5775) (Cons!5774 (h!6630 (_ BitVec 64)) (t!10936 List!5778)) )
))
(declare-fun arrayNoDuplicates!0 (array!21599 (_ BitVec 32) List!5778) Bool)

(assert (=> b!372689 (= res!209863 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5775))))

(declare-fun b!372690 () Bool)

(declare-fun res!209862 () Bool)

(assert (=> b!372690 (=> (not res!209862) (not e!227278))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372690 (= res!209862 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10617 _keys!658))))))

(declare-fun b!372691 () Bool)

(declare-fun res!209860 () Bool)

(assert (=> b!372691 (=> (not res!209860) (not e!227278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372691 (= res!209860 (validKeyInArray!0 k!778))))

(declare-fun res!209859 () Bool)

(assert (=> start!37078 (=> (not res!209859) (not e!227278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37078 (= res!209859 (validMask!0 mask!970))))

(assert (=> start!37078 e!227278))

(declare-fun e!227275 () Bool)

(declare-fun array_inv!7582 (array!21597) Bool)

(assert (=> start!37078 (and (array_inv!7582 _values!506) e!227275)))

(assert (=> start!37078 tp!29307))

(assert (=> start!37078 true))

(assert (=> start!37078 tp_is_empty!8845))

(declare-fun array_inv!7583 (array!21599) Bool)

(assert (=> start!37078 (array_inv!7583 _keys!658)))

(declare-fun b!372692 () Bool)

(declare-fun res!209856 () Bool)

(assert (=> b!372692 (=> (not res!209856) (not e!227278))))

(assert (=> b!372692 (= res!209856 (or (= (select (arr!10265 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10265 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372693 () Bool)

(assert (=> b!372693 (= e!227275 (and e!227277 mapRes!14832))))

(declare-fun condMapEmpty!14832 () Bool)

(declare-fun mapDefault!14832 () ValueCell!4079)

