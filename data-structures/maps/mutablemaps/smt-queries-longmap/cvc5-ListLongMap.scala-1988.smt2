; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34820 () Bool)

(assert start!34820)

(declare-fun b_free!7597 () Bool)

(declare-fun b_next!7597 () Bool)

(assert (=> start!34820 (= b_free!7597 (not b_next!7597))))

(declare-fun tp!26357 () Bool)

(declare-fun b_and!14837 () Bool)

(assert (=> start!34820 (= tp!26357 b_and!14837)))

(declare-fun b!348207 () Bool)

(declare-fun res!192949 () Bool)

(declare-fun e!213358 () Bool)

(assert (=> b!348207 (=> (not res!192949) (not e!213358))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11043 0))(
  ( (V!11044 (val!3819 Int)) )
))
(declare-fun zeroValue!1467 () V!11043)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3431 0))(
  ( (ValueCellFull!3431 (v!5998 V!11043)) (EmptyCell!3431) )
))
(declare-datatypes ((array!18651 0))(
  ( (array!18652 (arr!8832 (Array (_ BitVec 32) ValueCell!3431)) (size!9184 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18651)

(declare-datatypes ((array!18653 0))(
  ( (array!18654 (arr!8833 (Array (_ BitVec 32) (_ BitVec 64))) (size!9185 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18653)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11043)

(declare-datatypes ((tuple2!5512 0))(
  ( (tuple2!5513 (_1!2766 (_ BitVec 64)) (_2!2766 V!11043)) )
))
(declare-datatypes ((List!5156 0))(
  ( (Nil!5153) (Cons!5152 (h!6008 tuple2!5512) (t!10294 List!5156)) )
))
(declare-datatypes ((ListLongMap!4439 0))(
  ( (ListLongMap!4440 (toList!2235 List!5156)) )
))
(declare-fun contains!2296 (ListLongMap!4439 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1752 (array!18653 array!18651 (_ BitVec 32) (_ BitVec 32) V!11043 V!11043 (_ BitVec 32) Int) ListLongMap!4439)

(assert (=> b!348207 (= res!192949 (not (contains!2296 (getCurrentListMap!1752 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348208 () Bool)

(declare-fun res!192950 () Bool)

(assert (=> b!348208 (=> (not res!192950) (not e!213358))))

(assert (=> b!348208 (= res!192950 (and (= (size!9184 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9185 _keys!1895) (size!9184 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348209 () Bool)

(declare-fun res!192948 () Bool)

(assert (=> b!348209 (=> (not res!192948) (not e!213358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18653 (_ BitVec 32)) Bool)

(assert (=> b!348209 (= res!192948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348210 () Bool)

(declare-fun e!213357 () Bool)

(assert (=> b!348210 (= e!213357 false)))

(declare-fun lt!163832 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18653 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348210 (= lt!163832 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348211 () Bool)

(declare-fun res!192955 () Bool)

(assert (=> b!348211 (=> (not res!192955) (not e!213357))))

(declare-fun arrayContainsKey!0 (array!18653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348211 (= res!192955 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348212 () Bool)

(declare-fun e!213356 () Bool)

(declare-fun tp_is_empty!7549 () Bool)

(assert (=> b!348212 (= e!213356 tp_is_empty!7549)))

(declare-fun mapIsEmpty!12783 () Bool)

(declare-fun mapRes!12783 () Bool)

(assert (=> mapIsEmpty!12783 mapRes!12783))

(declare-fun b!348213 () Bool)

(declare-fun e!213355 () Bool)

(assert (=> b!348213 (= e!213355 (and e!213356 mapRes!12783))))

(declare-fun condMapEmpty!12783 () Bool)

(declare-fun mapDefault!12783 () ValueCell!3431)

