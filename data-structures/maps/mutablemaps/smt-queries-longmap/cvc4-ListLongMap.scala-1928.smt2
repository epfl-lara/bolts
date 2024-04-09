; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34226 () Bool)

(assert start!34226)

(declare-fun b_free!7241 () Bool)

(declare-fun b_next!7241 () Bool)

(assert (=> start!34226 (= b_free!7241 (not b_next!7241))))

(declare-fun tp!25257 () Bool)

(declare-fun b_and!14459 () Bool)

(assert (=> start!34226 (= tp!25257 b_and!14459)))

(declare-fun b!341117 () Bool)

(declare-fun res!188622 () Bool)

(declare-fun e!209220 () Bool)

(assert (=> b!341117 (=> (not res!188622) (not e!209220))))

(declare-datatypes ((array!17951 0))(
  ( (array!17952 (arr!8493 (Array (_ BitVec 32) (_ BitVec 64))) (size!8845 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17951)

(declare-datatypes ((List!4907 0))(
  ( (Nil!4904) (Cons!4903 (h!5759 (_ BitVec 64)) (t!10023 List!4907)) )
))
(declare-fun arrayNoDuplicates!0 (array!17951 (_ BitVec 32) List!4907) Bool)

(assert (=> b!341117 (= res!188622 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4904))))

(declare-fun b!341118 () Bool)

(declare-fun e!209223 () Bool)

(declare-fun tp_is_empty!7193 () Bool)

(assert (=> b!341118 (= e!209223 tp_is_empty!7193)))

(declare-fun res!188624 () Bool)

(assert (=> start!34226 (=> (not res!188624) (not e!209220))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34226 (= res!188624 (validMask!0 mask!2385))))

(assert (=> start!34226 e!209220))

(assert (=> start!34226 true))

(assert (=> start!34226 tp_is_empty!7193))

(assert (=> start!34226 tp!25257))

(declare-datatypes ((V!10567 0))(
  ( (V!10568 (val!3641 Int)) )
))
(declare-datatypes ((ValueCell!3253 0))(
  ( (ValueCellFull!3253 (v!5809 V!10567)) (EmptyCell!3253) )
))
(declare-datatypes ((array!17953 0))(
  ( (array!17954 (arr!8494 (Array (_ BitVec 32) ValueCell!3253)) (size!8846 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17953)

(declare-fun e!209219 () Bool)

(declare-fun array_inv!6282 (array!17953) Bool)

(assert (=> start!34226 (and (array_inv!6282 _values!1525) e!209219)))

(declare-fun array_inv!6283 (array!17951) Bool)

(assert (=> start!34226 (array_inv!6283 _keys!1895)))

(declare-fun b!341119 () Bool)

(declare-fun res!188620 () Bool)

(assert (=> b!341119 (=> (not res!188620) (not e!209220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17951 (_ BitVec 32)) Bool)

(assert (=> b!341119 (= res!188620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341120 () Bool)

(declare-fun res!188623 () Bool)

(assert (=> b!341120 (=> (not res!188623) (not e!209220))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341120 (= res!188623 (and (= (size!8846 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8845 _keys!1895) (size!8846 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341121 () Bool)

(declare-fun e!209218 () Bool)

(assert (=> b!341121 (= e!209218 tp_is_empty!7193)))

(declare-fun b!341122 () Bool)

(declare-fun e!209222 () Bool)

(assert (=> b!341122 (= e!209220 e!209222)))

(declare-fun res!188627 () Bool)

(assert (=> b!341122 (=> (not res!188627) (not e!209222))))

(declare-datatypes ((SeekEntryResult!3278 0))(
  ( (MissingZero!3278 (index!15291 (_ BitVec 32))) (Found!3278 (index!15292 (_ BitVec 32))) (Intermediate!3278 (undefined!4090 Bool) (index!15293 (_ BitVec 32)) (x!33979 (_ BitVec 32))) (Undefined!3278) (MissingVacant!3278 (index!15294 (_ BitVec 32))) )
))
(declare-fun lt!161709 () SeekEntryResult!3278)

(assert (=> b!341122 (= res!188627 (and (not (is-Found!3278 lt!161709)) (not (is-MissingZero!3278 lt!161709)) (is-MissingVacant!3278 lt!161709)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17951 (_ BitVec 32)) SeekEntryResult!3278)

(assert (=> b!341122 (= lt!161709 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341123 () Bool)

(declare-fun res!188621 () Bool)

(assert (=> b!341123 (=> (not res!188621) (not e!209220))))

(declare-fun zeroValue!1467 () V!10567)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10567)

(declare-datatypes ((tuple2!5264 0))(
  ( (tuple2!5265 (_1!2642 (_ BitVec 64)) (_2!2642 V!10567)) )
))
(declare-datatypes ((List!4908 0))(
  ( (Nil!4905) (Cons!4904 (h!5760 tuple2!5264) (t!10024 List!4908)) )
))
(declare-datatypes ((ListLongMap!4191 0))(
  ( (ListLongMap!4192 (toList!2111 List!4908)) )
))
(declare-fun contains!2161 (ListLongMap!4191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1631 (array!17951 array!17953 (_ BitVec 32) (_ BitVec 32) V!10567 V!10567 (_ BitVec 32) Int) ListLongMap!4191)

(assert (=> b!341123 (= res!188621 (not (contains!2161 (getCurrentListMap!1631 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!341124 () Bool)

(declare-fun res!188626 () Bool)

(assert (=> b!341124 (=> (not res!188626) (not e!209222))))

(declare-fun arrayContainsKey!0 (array!17951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341124 (= res!188626 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12216 () Bool)

(declare-fun mapRes!12216 () Bool)

(assert (=> mapIsEmpty!12216 mapRes!12216))

(declare-fun b!341125 () Bool)

(declare-fun res!188625 () Bool)

(assert (=> b!341125 (=> (not res!188625) (not e!209220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341125 (= res!188625 (validKeyInArray!0 k!1348))))

(declare-fun b!341126 () Bool)

(assert (=> b!341126 (= e!209219 (and e!209218 mapRes!12216))))

(declare-fun condMapEmpty!12216 () Bool)

(declare-fun mapDefault!12216 () ValueCell!3253)

