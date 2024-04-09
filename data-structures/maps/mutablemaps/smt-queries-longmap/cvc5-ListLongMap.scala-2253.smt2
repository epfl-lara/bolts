; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36988 () Bool)

(assert start!36988)

(declare-fun b_free!8107 () Bool)

(declare-fun b_next!8107 () Bool)

(assert (=> start!36988 (= b_free!8107 (not b_next!8107))))

(declare-fun tp!29036 () Bool)

(declare-fun b_and!15367 () Bool)

(assert (=> start!36988 (= tp!29036 b_and!15367)))

(declare-fun mapIsEmpty!14697 () Bool)

(declare-fun mapRes!14697 () Bool)

(assert (=> mapIsEmpty!14697 mapRes!14697))

(declare-fun b!370931 () Bool)

(declare-fun res!208509 () Bool)

(declare-fun e!226465 () Bool)

(assert (=> b!370931 (=> (not res!208509) (not e!226465))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370931 (= res!208509 (validKeyInArray!0 k!778))))

(declare-fun b!370932 () Bool)

(declare-fun res!208510 () Bool)

(assert (=> b!370932 (=> (not res!208510) (not e!226465))))

(declare-datatypes ((array!21423 0))(
  ( (array!21424 (arr!10177 (Array (_ BitVec 32) (_ BitVec 64))) (size!10529 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21423)

(declare-fun arrayContainsKey!0 (array!21423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370932 (= res!208510 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!370933 () Bool)

(declare-fun res!208513 () Bool)

(assert (=> b!370933 (=> (not res!208513) (not e!226465))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370933 (= res!208513 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10529 _keys!658))))))

(declare-fun b!370934 () Bool)

(declare-fun res!208508 () Bool)

(assert (=> b!370934 (=> (not res!208508) (not e!226465))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21423 (_ BitVec 32)) Bool)

(assert (=> b!370934 (= res!208508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370935 () Bool)

(declare-fun e!226469 () Bool)

(declare-fun tp_is_empty!8755 () Bool)

(assert (=> b!370935 (= e!226469 tp_is_empty!8755)))

(declare-fun b!370936 () Bool)

(declare-fun res!208505 () Bool)

(declare-fun e!226468 () Bool)

(assert (=> b!370936 (=> (not res!208505) (not e!226468))))

(declare-fun lt!170131 () array!21423)

(declare-datatypes ((List!5716 0))(
  ( (Nil!5713) (Cons!5712 (h!6568 (_ BitVec 64)) (t!10874 List!5716)) )
))
(declare-fun arrayNoDuplicates!0 (array!21423 (_ BitVec 32) List!5716) Bool)

(assert (=> b!370936 (= res!208505 (arrayNoDuplicates!0 lt!170131 #b00000000000000000000000000000000 Nil!5713))))

(declare-fun b!370937 () Bool)

(declare-fun e!226466 () Bool)

(assert (=> b!370937 (= e!226466 tp_is_empty!8755)))

(declare-fun b!370938 () Bool)

(assert (=> b!370938 (= e!226465 e!226468)))

(declare-fun res!208506 () Bool)

(assert (=> b!370938 (=> (not res!208506) (not e!226468))))

(assert (=> b!370938 (= res!208506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170131 mask!970))))

(assert (=> b!370938 (= lt!170131 (array!21424 (store (arr!10177 _keys!658) i!548 k!778) (size!10529 _keys!658)))))

(declare-fun b!370939 () Bool)

(declare-fun res!208507 () Bool)

(assert (=> b!370939 (=> (not res!208507) (not e!226465))))

(assert (=> b!370939 (= res!208507 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5713))))

(declare-fun b!370940 () Bool)

(declare-fun e!226470 () Bool)

(assert (=> b!370940 (= e!226470 (and e!226469 mapRes!14697))))

(declare-fun condMapEmpty!14697 () Bool)

(declare-datatypes ((V!12779 0))(
  ( (V!12780 (val!4422 Int)) )
))
(declare-datatypes ((ValueCell!4034 0))(
  ( (ValueCellFull!4034 (v!6615 V!12779)) (EmptyCell!4034) )
))
(declare-datatypes ((array!21425 0))(
  ( (array!21426 (arr!10178 (Array (_ BitVec 32) ValueCell!4034)) (size!10530 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21425)

(declare-fun mapDefault!14697 () ValueCell!4034)

