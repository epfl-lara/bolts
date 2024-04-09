; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34536 () Bool)

(assert start!34536)

(declare-fun b_free!7451 () Bool)

(declare-fun b_next!7451 () Bool)

(assert (=> start!34536 (= b_free!7451 (not b_next!7451))))

(declare-fun tp!25899 () Bool)

(declare-fun b_and!14677 () Bool)

(assert (=> start!34536 (= tp!25899 b_and!14677)))

(declare-fun b!344933 () Bool)

(declare-fun res!190905 () Bool)

(declare-fun e!211424 () Bool)

(assert (=> b!344933 (=> (not res!190905) (not e!211424))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344933 (= res!190905 (validKeyInArray!0 k!1348))))

(declare-fun b!344934 () Bool)

(declare-fun e!211425 () Bool)

(declare-fun tp_is_empty!7403 () Bool)

(assert (=> b!344934 (= e!211425 tp_is_empty!7403)))

(declare-fun b!344935 () Bool)

(declare-fun res!190906 () Bool)

(assert (=> b!344935 (=> (not res!190906) (not e!211424))))

(declare-datatypes ((array!18361 0))(
  ( (array!18362 (arr!8694 (Array (_ BitVec 32) (_ BitVec 64))) (size!9046 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18361)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18361 (_ BitVec 32)) Bool)

(assert (=> b!344935 (= res!190906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344936 () Bool)

(declare-fun res!190910 () Bool)

(assert (=> b!344936 (=> (not res!190910) (not e!211424))))

(declare-datatypes ((List!5057 0))(
  ( (Nil!5054) (Cons!5053 (h!5909 (_ BitVec 64)) (t!10181 List!5057)) )
))
(declare-fun arrayNoDuplicates!0 (array!18361 (_ BitVec 32) List!5057) Bool)

(assert (=> b!344936 (= res!190910 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5054))))

(declare-fun b!344937 () Bool)

(assert (=> b!344937 (= e!211424 false)))

(declare-datatypes ((SeekEntryResult!3349 0))(
  ( (MissingZero!3349 (index!15575 (_ BitVec 32))) (Found!3349 (index!15576 (_ BitVec 32))) (Intermediate!3349 (undefined!4161 Bool) (index!15577 (_ BitVec 32)) (x!34370 (_ BitVec 32))) (Undefined!3349) (MissingVacant!3349 (index!15578 (_ BitVec 32))) )
))
(declare-fun lt!162711 () SeekEntryResult!3349)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18361 (_ BitVec 32)) SeekEntryResult!3349)

(assert (=> b!344937 (= lt!162711 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12543 () Bool)

(declare-fun mapRes!12543 () Bool)

(assert (=> mapIsEmpty!12543 mapRes!12543))

(declare-fun b!344938 () Bool)

(declare-fun e!211427 () Bool)

(assert (=> b!344938 (= e!211427 tp_is_empty!7403)))

(declare-fun b!344939 () Bool)

(declare-fun res!190909 () Bool)

(assert (=> b!344939 (=> (not res!190909) (not e!211424))))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10847 0))(
  ( (V!10848 (val!3746 Int)) )
))
(declare-datatypes ((ValueCell!3358 0))(
  ( (ValueCellFull!3358 (v!5918 V!10847)) (EmptyCell!3358) )
))
(declare-datatypes ((array!18363 0))(
  ( (array!18364 (arr!8695 (Array (_ BitVec 32) ValueCell!3358)) (size!9047 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18363)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10847)

(declare-fun zeroValue!1467 () V!10847)

(declare-datatypes ((tuple2!5410 0))(
  ( (tuple2!5411 (_1!2715 (_ BitVec 64)) (_2!2715 V!10847)) )
))
(declare-datatypes ((List!5058 0))(
  ( (Nil!5055) (Cons!5054 (h!5910 tuple2!5410) (t!10182 List!5058)) )
))
(declare-datatypes ((ListLongMap!4337 0))(
  ( (ListLongMap!4338 (toList!2184 List!5058)) )
))
(declare-fun contains!2238 (ListLongMap!4337 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1704 (array!18361 array!18363 (_ BitVec 32) (_ BitVec 32) V!10847 V!10847 (_ BitVec 32) Int) ListLongMap!4337)

(assert (=> b!344939 (= res!190909 (not (contains!2238 (getCurrentListMap!1704 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!190908 () Bool)

(assert (=> start!34536 (=> (not res!190908) (not e!211424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34536 (= res!190908 (validMask!0 mask!2385))))

(assert (=> start!34536 e!211424))

(assert (=> start!34536 true))

(assert (=> start!34536 tp_is_empty!7403))

(assert (=> start!34536 tp!25899))

(declare-fun e!211428 () Bool)

(declare-fun array_inv!6430 (array!18363) Bool)

(assert (=> start!34536 (and (array_inv!6430 _values!1525) e!211428)))

(declare-fun array_inv!6431 (array!18361) Bool)

(assert (=> start!34536 (array_inv!6431 _keys!1895)))

(declare-fun b!344940 () Bool)

(assert (=> b!344940 (= e!211428 (and e!211425 mapRes!12543))))

(declare-fun condMapEmpty!12543 () Bool)

(declare-fun mapDefault!12543 () ValueCell!3358)

