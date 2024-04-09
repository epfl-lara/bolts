; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36808 () Bool)

(assert start!36808)

(declare-fun b!367421 () Bool)

(declare-fun res!205814 () Bool)

(declare-fun e!224845 () Bool)

(assert (=> b!367421 (=> (not res!205814) (not e!224845))))

(declare-datatypes ((array!21075 0))(
  ( (array!21076 (arr!10003 (Array (_ BitVec 32) (_ BitVec 64))) (size!10355 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21075)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21075 (_ BitVec 32)) Bool)

(assert (=> b!367421 (= res!205814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367422 () Bool)

(declare-fun res!205808 () Bool)

(declare-fun e!224846 () Bool)

(assert (=> b!367422 (=> (not res!205808) (not e!224846))))

(declare-fun lt!169372 () array!21075)

(declare-datatypes ((List!5593 0))(
  ( (Nil!5590) (Cons!5589 (h!6445 (_ BitVec 64)) (t!10751 List!5593)) )
))
(declare-fun arrayNoDuplicates!0 (array!21075 (_ BitVec 32) List!5593) Bool)

(assert (=> b!367422 (= res!205808 (arrayNoDuplicates!0 lt!169372 #b00000000000000000000000000000000 Nil!5590))))

(declare-fun b!367424 () Bool)

(declare-fun res!205812 () Bool)

(assert (=> b!367424 (=> (not res!205812) (not e!224845))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12539 0))(
  ( (V!12540 (val!4332 Int)) )
))
(declare-datatypes ((ValueCell!3944 0))(
  ( (ValueCellFull!3944 (v!6525 V!12539)) (EmptyCell!3944) )
))
(declare-datatypes ((array!21077 0))(
  ( (array!21078 (arr!10004 (Array (_ BitVec 32) ValueCell!3944)) (size!10356 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21077)

(assert (=> b!367424 (= res!205812 (and (= (size!10356 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10355 _keys!658) (size!10356 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367425 () Bool)

(assert (=> b!367425 (= e!224845 e!224846)))

(declare-fun res!205809 () Bool)

(assert (=> b!367425 (=> (not res!205809) (not e!224846))))

(assert (=> b!367425 (= res!205809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169372 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367425 (= lt!169372 (array!21076 (store (arr!10003 _keys!658) i!548 k!778) (size!10355 _keys!658)))))

(declare-fun b!367426 () Bool)

(assert (=> b!367426 (= e!224846 (bvsgt #b00000000000000000000000000000000 (size!10355 _keys!658)))))

(declare-fun b!367427 () Bool)

(declare-fun res!205806 () Bool)

(assert (=> b!367427 (=> (not res!205806) (not e!224845))))

(assert (=> b!367427 (= res!205806 (or (= (select (arr!10003 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10003 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14427 () Bool)

(declare-fun mapRes!14427 () Bool)

(declare-fun tp!28503 () Bool)

(declare-fun e!224847 () Bool)

(assert (=> mapNonEmpty!14427 (= mapRes!14427 (and tp!28503 e!224847))))

(declare-fun mapRest!14427 () (Array (_ BitVec 32) ValueCell!3944))

(declare-fun mapValue!14427 () ValueCell!3944)

(declare-fun mapKey!14427 () (_ BitVec 32))

(assert (=> mapNonEmpty!14427 (= (arr!10004 _values!506) (store mapRest!14427 mapKey!14427 mapValue!14427))))

(declare-fun b!367428 () Bool)

(declare-fun e!224849 () Bool)

(declare-fun e!224850 () Bool)

(assert (=> b!367428 (= e!224849 (and e!224850 mapRes!14427))))

(declare-fun condMapEmpty!14427 () Bool)

(declare-fun mapDefault!14427 () ValueCell!3944)

