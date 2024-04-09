; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36794 () Bool)

(assert start!36794)

(declare-fun b!367167 () Bool)

(declare-fun res!205617 () Bool)

(declare-fun e!224722 () Bool)

(assert (=> b!367167 (=> (not res!205617) (not e!224722))))

(declare-datatypes ((array!21047 0))(
  ( (array!21048 (arr!9989 (Array (_ BitVec 32) (_ BitVec 64))) (size!10341 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21047)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367167 (= res!205617 (or (= (select (arr!9989 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9989 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367168 () Bool)

(declare-fun res!205622 () Bool)

(assert (=> b!367168 (=> (not res!205622) (not e!224722))))

(declare-datatypes ((List!5586 0))(
  ( (Nil!5583) (Cons!5582 (h!6438 (_ BitVec 64)) (t!10744 List!5586)) )
))
(declare-fun arrayNoDuplicates!0 (array!21047 (_ BitVec 32) List!5586) Bool)

(assert (=> b!367168 (= res!205622 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5583))))

(declare-fun b!367169 () Bool)

(declare-fun res!205619 () Bool)

(assert (=> b!367169 (=> (not res!205619) (not e!224722))))

(assert (=> b!367169 (= res!205619 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10341 _keys!658))))))

(declare-fun mapIsEmpty!14406 () Bool)

(declare-fun mapRes!14406 () Bool)

(assert (=> mapIsEmpty!14406 mapRes!14406))

(declare-fun b!367170 () Bool)

(declare-fun e!224719 () Bool)

(assert (=> b!367170 (= e!224722 e!224719)))

(declare-fun res!205620 () Bool)

(assert (=> b!367170 (=> (not res!205620) (not e!224719))))

(declare-fun lt!169332 () array!21047)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21047 (_ BitVec 32)) Bool)

(assert (=> b!367170 (= res!205620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169332 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!367170 (= lt!169332 (array!21048 (store (arr!9989 _keys!658) i!548 k!778) (size!10341 _keys!658)))))

(declare-fun b!367171 () Bool)

(declare-fun res!205616 () Bool)

(assert (=> b!367171 (=> (not res!205616) (not e!224722))))

(assert (=> b!367171 (= res!205616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367172 () Bool)

(declare-fun e!224720 () Bool)

(declare-fun tp_is_empty!8561 () Bool)

(assert (=> b!367172 (= e!224720 tp_is_empty!8561)))

(declare-fun b!367173 () Bool)

(declare-fun e!224724 () Bool)

(assert (=> b!367173 (= e!224724 (and e!224720 mapRes!14406))))

(declare-fun condMapEmpty!14406 () Bool)

(declare-datatypes ((V!12519 0))(
  ( (V!12520 (val!4325 Int)) )
))
(declare-datatypes ((ValueCell!3937 0))(
  ( (ValueCellFull!3937 (v!6518 V!12519)) (EmptyCell!3937) )
))
(declare-datatypes ((array!21049 0))(
  ( (array!21050 (arr!9990 (Array (_ BitVec 32) ValueCell!3937)) (size!10342 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21049)

(declare-fun mapDefault!14406 () ValueCell!3937)

