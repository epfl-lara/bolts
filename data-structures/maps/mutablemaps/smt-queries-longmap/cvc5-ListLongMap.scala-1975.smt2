; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34720 () Bool)

(assert start!34720)

(declare-fun b_free!7519 () Bool)

(declare-fun b_next!7519 () Bool)

(assert (=> start!34720 (= b_free!7519 (not b_next!7519))))

(declare-fun tp!26121 () Bool)

(declare-fun b_and!14757 () Bool)

(assert (=> start!34720 (= tp!26121 b_and!14757)))

(declare-fun b!346776 () Bool)

(declare-fun res!191950 () Bool)

(declare-fun e!212519 () Bool)

(assert (=> b!346776 (=> (not res!191950) (not e!212519))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3371 0))(
  ( (MissingZero!3371 (index!15663 (_ BitVec 32))) (Found!3371 (index!15664 (_ BitVec 32))) (Intermediate!3371 (undefined!4183 Bool) (index!15665 (_ BitVec 32)) (x!34548 (_ BitVec 32))) (Undefined!3371) (MissingVacant!3371 (index!15666 (_ BitVec 32))) )
))
(declare-fun lt!163428 () SeekEntryResult!3371)

(declare-datatypes ((array!18499 0))(
  ( (array!18500 (arr!8757 (Array (_ BitVec 32) (_ BitVec 64))) (size!9109 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18499)

(declare-fun arrayContainsKey!0 (array!18499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346776 (= res!191950 (arrayContainsKey!0 _keys!1895 k!1348 (index!15664 lt!163428)))))

(declare-fun res!191955 () Bool)

(declare-fun e!212520 () Bool)

(assert (=> start!34720 (=> (not res!191955) (not e!212520))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34720 (= res!191955 (validMask!0 mask!2385))))

(assert (=> start!34720 e!212520))

(assert (=> start!34720 true))

(declare-fun tp_is_empty!7471 () Bool)

(assert (=> start!34720 tp_is_empty!7471))

(assert (=> start!34720 tp!26121))

(declare-datatypes ((V!10939 0))(
  ( (V!10940 (val!3780 Int)) )
))
(declare-datatypes ((ValueCell!3392 0))(
  ( (ValueCellFull!3392 (v!5958 V!10939)) (EmptyCell!3392) )
))
(declare-datatypes ((array!18501 0))(
  ( (array!18502 (arr!8758 (Array (_ BitVec 32) ValueCell!3392)) (size!9110 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18501)

(declare-fun e!212518 () Bool)

(declare-fun array_inv!6472 (array!18501) Bool)

(assert (=> start!34720 (and (array_inv!6472 _values!1525) e!212518)))

(declare-fun array_inv!6473 (array!18499) Bool)

(assert (=> start!34720 (array_inv!6473 _keys!1895)))

(declare-fun b!346777 () Bool)

(declare-fun res!191957 () Bool)

(assert (=> b!346777 (=> (not res!191957) (not e!212520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18499 (_ BitVec 32)) Bool)

(assert (=> b!346777 (= res!191957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346778 () Bool)

(declare-fun e!212522 () Bool)

(assert (=> b!346778 (= e!212522 tp_is_empty!7471)))

(declare-fun b!346779 () Bool)

(declare-fun res!191956 () Bool)

(assert (=> b!346779 (=> (not res!191956) (not e!212520))))

(declare-datatypes ((List!5099 0))(
  ( (Nil!5096) (Cons!5095 (h!5951 (_ BitVec 64)) (t!10235 List!5099)) )
))
(declare-fun arrayNoDuplicates!0 (array!18499 (_ BitVec 32) List!5099) Bool)

(assert (=> b!346779 (= res!191956 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5096))))

(declare-fun b!346780 () Bool)

(declare-fun e!212521 () Bool)

(assert (=> b!346780 (= e!212521 tp_is_empty!7471)))

(declare-fun b!346781 () Bool)

(declare-fun res!191952 () Bool)

(assert (=> b!346781 (=> (not res!191952) (not e!212520))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346781 (= res!191952 (and (= (size!9110 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9109 _keys!1895) (size!9110 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346782 () Bool)

(assert (=> b!346782 (= e!212520 e!212519)))

(declare-fun res!191951 () Bool)

(assert (=> b!346782 (=> (not res!191951) (not e!212519))))

(assert (=> b!346782 (= res!191951 (and (is-Found!3371 lt!163428) (= (select (arr!8757 _keys!1895) (index!15664 lt!163428)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18499 (_ BitVec 32)) SeekEntryResult!3371)

(assert (=> b!346782 (= lt!163428 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346783 () Bool)

(declare-fun res!191953 () Bool)

(assert (=> b!346783 (=> (not res!191953) (not e!212520))))

(declare-fun zeroValue!1467 () V!10939)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10939)

(declare-datatypes ((tuple2!5452 0))(
  ( (tuple2!5453 (_1!2736 (_ BitVec 64)) (_2!2736 V!10939)) )
))
(declare-datatypes ((List!5100 0))(
  ( (Nil!5097) (Cons!5096 (h!5952 tuple2!5452) (t!10236 List!5100)) )
))
(declare-datatypes ((ListLongMap!4379 0))(
  ( (ListLongMap!4380 (toList!2205 List!5100)) )
))
(declare-fun contains!2265 (ListLongMap!4379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1725 (array!18499 array!18501 (_ BitVec 32) (_ BitVec 32) V!10939 V!10939 (_ BitVec 32) Int) ListLongMap!4379)

(assert (=> b!346783 (= res!191953 (not (contains!2265 (getCurrentListMap!1725 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346784 () Bool)

(declare-fun mapRes!12663 () Bool)

(assert (=> b!346784 (= e!212518 (and e!212521 mapRes!12663))))

(declare-fun condMapEmpty!12663 () Bool)

(declare-fun mapDefault!12663 () ValueCell!3392)

