; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36944 () Bool)

(assert start!36944)

(declare-fun b_free!8063 () Bool)

(declare-fun b_next!8063 () Bool)

(assert (=> start!36944 (= b_free!8063 (not b_next!8063))))

(declare-fun tp!28904 () Bool)

(declare-fun b_and!15323 () Bool)

(assert (=> start!36944 (= tp!28904 b_and!15323)))

(declare-fun b!370073 () Bool)

(declare-fun e!226074 () Bool)

(declare-fun tp_is_empty!8711 () Bool)

(assert (=> b!370073 (= e!226074 tp_is_empty!8711)))

(declare-fun res!207848 () Bool)

(declare-fun e!226072 () Bool)

(assert (=> start!36944 (=> (not res!207848) (not e!226072))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36944 (= res!207848 (validMask!0 mask!970))))

(assert (=> start!36944 e!226072))

(declare-datatypes ((V!12719 0))(
  ( (V!12720 (val!4400 Int)) )
))
(declare-datatypes ((ValueCell!4012 0))(
  ( (ValueCellFull!4012 (v!6593 V!12719)) (EmptyCell!4012) )
))
(declare-datatypes ((array!21343 0))(
  ( (array!21344 (arr!10137 (Array (_ BitVec 32) ValueCell!4012)) (size!10489 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21343)

(declare-fun e!226070 () Bool)

(declare-fun array_inv!7486 (array!21343) Bool)

(assert (=> start!36944 (and (array_inv!7486 _values!506) e!226070)))

(assert (=> start!36944 tp!28904))

(assert (=> start!36944 true))

(assert (=> start!36944 tp_is_empty!8711))

(declare-datatypes ((array!21345 0))(
  ( (array!21346 (arr!10138 (Array (_ BitVec 32) (_ BitVec 64))) (size!10490 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21345)

(declare-fun array_inv!7487 (array!21345) Bool)

(assert (=> start!36944 (array_inv!7487 _keys!658)))

(declare-fun b!370074 () Bool)

(declare-fun res!207847 () Bool)

(assert (=> b!370074 (=> (not res!207847) (not e!226072))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370074 (= res!207847 (and (= (size!10489 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10490 _keys!658) (size!10489 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370075 () Bool)

(declare-fun res!207851 () Bool)

(assert (=> b!370075 (=> (not res!207851) (not e!226072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21345 (_ BitVec 32)) Bool)

(assert (=> b!370075 (= res!207851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14631 () Bool)

(declare-fun mapRes!14631 () Bool)

(assert (=> mapIsEmpty!14631 mapRes!14631))

(declare-fun b!370076 () Bool)

(declare-fun res!207852 () Bool)

(declare-fun e!226071 () Bool)

(assert (=> b!370076 (=> (not res!207852) (not e!226071))))

(declare-fun lt!169889 () array!21345)

(declare-datatypes ((List!5692 0))(
  ( (Nil!5689) (Cons!5688 (h!6544 (_ BitVec 64)) (t!10850 List!5692)) )
))
(declare-fun arrayNoDuplicates!0 (array!21345 (_ BitVec 32) List!5692) Bool)

(assert (=> b!370076 (= res!207852 (arrayNoDuplicates!0 lt!169889 #b00000000000000000000000000000000 Nil!5689))))

(declare-fun b!370077 () Bool)

(declare-fun res!207846 () Bool)

(assert (=> b!370077 (=> (not res!207846) (not e!226072))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370077 (= res!207846 (or (= (select (arr!10138 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10138 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370078 () Bool)

(assert (=> b!370078 (= e!226070 (and e!226074 mapRes!14631))))

(declare-fun condMapEmpty!14631 () Bool)

(declare-fun mapDefault!14631 () ValueCell!4012)

