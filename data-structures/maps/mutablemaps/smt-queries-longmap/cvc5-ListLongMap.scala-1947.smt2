; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34436 () Bool)

(assert start!34436)

(declare-fun b_free!7351 () Bool)

(declare-fun b_next!7351 () Bool)

(assert (=> start!34436 (= b_free!7351 (not b_next!7351))))

(declare-fun tp!25598 () Bool)

(declare-fun b_and!14577 () Bool)

(assert (=> start!34436 (= tp!25598 b_and!14577)))

(declare-fun b!343583 () Bool)

(declare-fun e!210677 () Bool)

(assert (=> b!343583 (= e!210677 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18169 0))(
  ( (array!18170 (arr!8598 (Array (_ BitVec 32) (_ BitVec 64))) (size!8950 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18169)

(declare-datatypes ((SeekEntryResult!3317 0))(
  ( (MissingZero!3317 (index!15447 (_ BitVec 32))) (Found!3317 (index!15448 (_ BitVec 32))) (Intermediate!3317 (undefined!4129 Bool) (index!15449 (_ BitVec 32)) (x!34210 (_ BitVec 32))) (Undefined!3317) (MissingVacant!3317 (index!15450 (_ BitVec 32))) )
))
(declare-fun lt!162561 () SeekEntryResult!3317)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18169 (_ BitVec 32)) SeekEntryResult!3317)

(assert (=> b!343583 (= lt!162561 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343584 () Bool)

(declare-fun res!190007 () Bool)

(assert (=> b!343584 (=> (not res!190007) (not e!210677))))

(declare-datatypes ((V!10715 0))(
  ( (V!10716 (val!3696 Int)) )
))
(declare-fun zeroValue!1467 () V!10715)

(declare-datatypes ((ValueCell!3308 0))(
  ( (ValueCellFull!3308 (v!5868 V!10715)) (EmptyCell!3308) )
))
(declare-datatypes ((array!18171 0))(
  ( (array!18172 (arr!8599 (Array (_ BitVec 32) ValueCell!3308)) (size!8951 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18171)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10715)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5340 0))(
  ( (tuple2!5341 (_1!2680 (_ BitVec 64)) (_2!2680 V!10715)) )
))
(declare-datatypes ((List!4985 0))(
  ( (Nil!4982) (Cons!4981 (h!5837 tuple2!5340) (t!10109 List!4985)) )
))
(declare-datatypes ((ListLongMap!4267 0))(
  ( (ListLongMap!4268 (toList!2149 List!4985)) )
))
(declare-fun contains!2203 (ListLongMap!4267 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1669 (array!18169 array!18171 (_ BitVec 32) (_ BitVec 32) V!10715 V!10715 (_ BitVec 32) Int) ListLongMap!4267)

(assert (=> b!343584 (= res!190007 (not (contains!2203 (getCurrentListMap!1669 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!343585 () Bool)

(declare-fun e!210676 () Bool)

(declare-fun tp_is_empty!7303 () Bool)

(assert (=> b!343585 (= e!210676 tp_is_empty!7303)))

(declare-fun res!190006 () Bool)

(assert (=> start!34436 (=> (not res!190006) (not e!210677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34436 (= res!190006 (validMask!0 mask!2385))))

(assert (=> start!34436 e!210677))

(assert (=> start!34436 true))

(assert (=> start!34436 tp_is_empty!7303))

(assert (=> start!34436 tp!25598))

(declare-fun e!210678 () Bool)

(declare-fun array_inv!6358 (array!18171) Bool)

(assert (=> start!34436 (and (array_inv!6358 _values!1525) e!210678)))

(declare-fun array_inv!6359 (array!18169) Bool)

(assert (=> start!34436 (array_inv!6359 _keys!1895)))

(declare-fun b!343586 () Bool)

(declare-fun res!190005 () Bool)

(assert (=> b!343586 (=> (not res!190005) (not e!210677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18169 (_ BitVec 32)) Bool)

(assert (=> b!343586 (= res!190005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343587 () Bool)

(declare-fun res!190010 () Bool)

(assert (=> b!343587 (=> (not res!190010) (not e!210677))))

(assert (=> b!343587 (= res!190010 (and (= (size!8951 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8950 _keys!1895) (size!8951 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343588 () Bool)

(declare-fun res!190009 () Bool)

(assert (=> b!343588 (=> (not res!190009) (not e!210677))))

(declare-datatypes ((List!4986 0))(
  ( (Nil!4983) (Cons!4982 (h!5838 (_ BitVec 64)) (t!10110 List!4986)) )
))
(declare-fun arrayNoDuplicates!0 (array!18169 (_ BitVec 32) List!4986) Bool)

(assert (=> b!343588 (= res!190009 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4983))))

(declare-fun b!343589 () Bool)

(declare-fun res!190008 () Bool)

(assert (=> b!343589 (=> (not res!190008) (not e!210677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343589 (= res!190008 (validKeyInArray!0 k!1348))))

(declare-fun b!343590 () Bool)

(declare-fun e!210674 () Bool)

(declare-fun mapRes!12393 () Bool)

(assert (=> b!343590 (= e!210678 (and e!210674 mapRes!12393))))

(declare-fun condMapEmpty!12393 () Bool)

(declare-fun mapDefault!12393 () ValueCell!3308)

