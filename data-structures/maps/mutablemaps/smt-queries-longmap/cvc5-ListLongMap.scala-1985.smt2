; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34802 () Bool)

(assert start!34802)

(declare-fun b_free!7579 () Bool)

(declare-fun b_next!7579 () Bool)

(assert (=> start!34802 (= b_free!7579 (not b_next!7579))))

(declare-fun tp!26304 () Bool)

(declare-fun b_and!14819 () Bool)

(assert (=> start!34802 (= tp!26304 b_and!14819)))

(declare-fun b!347910 () Bool)

(declare-fun res!192738 () Bool)

(declare-fun e!213195 () Bool)

(assert (=> b!347910 (=> (not res!192738) (not e!213195))))

(declare-datatypes ((array!18617 0))(
  ( (array!18618 (arr!8815 (Array (_ BitVec 32) (_ BitVec 64))) (size!9167 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18617)

(declare-datatypes ((List!5144 0))(
  ( (Nil!5141) (Cons!5140 (h!5996 (_ BitVec 64)) (t!10282 List!5144)) )
))
(declare-fun arrayNoDuplicates!0 (array!18617 (_ BitVec 32) List!5144) Bool)

(assert (=> b!347910 (= res!192738 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5141))))

(declare-fun b!347911 () Bool)

(declare-fun res!192735 () Bool)

(declare-fun e!213197 () Bool)

(assert (=> b!347911 (=> (not res!192735) (not e!213197))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347911 (= res!192735 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!347912 () Bool)

(declare-fun res!192737 () Bool)

(assert (=> b!347912 (=> (not res!192737) (not e!213195))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18617 (_ BitVec 32)) Bool)

(assert (=> b!347912 (= res!192737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347913 () Bool)

(assert (=> b!347913 (= e!213197 false)))

(declare-fun lt!163778 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18617 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!347913 (= lt!163778 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun res!192734 () Bool)

(assert (=> start!34802 (=> (not res!192734) (not e!213195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34802 (= res!192734 (validMask!0 mask!2385))))

(assert (=> start!34802 e!213195))

(assert (=> start!34802 true))

(declare-fun tp_is_empty!7531 () Bool)

(assert (=> start!34802 tp_is_empty!7531))

(assert (=> start!34802 tp!26304))

(declare-datatypes ((V!11019 0))(
  ( (V!11020 (val!3810 Int)) )
))
(declare-datatypes ((ValueCell!3422 0))(
  ( (ValueCellFull!3422 (v!5989 V!11019)) (EmptyCell!3422) )
))
(declare-datatypes ((array!18619 0))(
  ( (array!18620 (arr!8816 (Array (_ BitVec 32) ValueCell!3422)) (size!9168 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18619)

(declare-fun e!213192 () Bool)

(declare-fun array_inv!6508 (array!18619) Bool)

(assert (=> start!34802 (and (array_inv!6508 _values!1525) e!213192)))

(declare-fun array_inv!6509 (array!18617) Bool)

(assert (=> start!34802 (array_inv!6509 _keys!1895)))

(declare-fun mapNonEmpty!12756 () Bool)

(declare-fun mapRes!12756 () Bool)

(declare-fun tp!26303 () Bool)

(declare-fun e!213194 () Bool)

(assert (=> mapNonEmpty!12756 (= mapRes!12756 (and tp!26303 e!213194))))

(declare-fun mapRest!12756 () (Array (_ BitVec 32) ValueCell!3422))

(declare-fun mapValue!12756 () ValueCell!3422)

(declare-fun mapKey!12756 () (_ BitVec 32))

(assert (=> mapNonEmpty!12756 (= (arr!8816 _values!1525) (store mapRest!12756 mapKey!12756 mapValue!12756))))

(declare-fun b!347914 () Bool)

(assert (=> b!347914 (= e!213194 tp_is_empty!7531)))

(declare-fun b!347915 () Bool)

(declare-fun e!213193 () Bool)

(assert (=> b!347915 (= e!213193 tp_is_empty!7531)))

(declare-fun b!347916 () Bool)

(declare-fun res!192736 () Bool)

(assert (=> b!347916 (=> (not res!192736) (not e!213195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347916 (= res!192736 (validKeyInArray!0 k!1348))))

(declare-fun b!347917 () Bool)

(declare-fun res!192732 () Bool)

(assert (=> b!347917 (=> (not res!192732) (not e!213195))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347917 (= res!192732 (and (= (size!9168 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9167 _keys!1895) (size!9168 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347918 () Bool)

(assert (=> b!347918 (= e!213192 (and e!213193 mapRes!12756))))

(declare-fun condMapEmpty!12756 () Bool)

(declare-fun mapDefault!12756 () ValueCell!3422)

