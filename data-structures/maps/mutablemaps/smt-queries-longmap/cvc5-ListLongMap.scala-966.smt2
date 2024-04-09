; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20964 () Bool)

(assert start!20964)

(declare-fun b_free!5545 () Bool)

(declare-fun b_next!5545 () Bool)

(assert (=> start!20964 (= b_free!5545 (not b_next!5545))))

(declare-fun tp!19684 () Bool)

(declare-fun b_and!12345 () Bool)

(assert (=> start!20964 (= tp!19684 b_and!12345)))

(declare-fun b!210437 () Bool)

(declare-fun res!102690 () Bool)

(declare-fun e!137044 () Bool)

(assert (=> b!210437 (=> (not res!102690) (not e!137044))))

(declare-datatypes ((array!10014 0))(
  ( (array!10015 (arr!4754 (Array (_ BitVec 32) (_ BitVec 64))) (size!5079 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10014)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6857 0))(
  ( (V!6858 (val!2748 Int)) )
))
(declare-datatypes ((ValueCell!2360 0))(
  ( (ValueCellFull!2360 (v!4726 V!6857)) (EmptyCell!2360) )
))
(declare-datatypes ((array!10016 0))(
  ( (array!10017 (arr!4755 (Array (_ BitVec 32) ValueCell!2360)) (size!5080 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10016)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!210437 (= res!102690 (and (= (size!5080 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5079 _keys!825) (size!5080 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!102687 () Bool)

(assert (=> start!20964 (=> (not res!102687) (not e!137044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20964 (= res!102687 (validMask!0 mask!1149))))

(assert (=> start!20964 e!137044))

(declare-fun e!137045 () Bool)

(declare-fun array_inv!3137 (array!10016) Bool)

(assert (=> start!20964 (and (array_inv!3137 _values!649) e!137045)))

(assert (=> start!20964 true))

(declare-fun tp_is_empty!5407 () Bool)

(assert (=> start!20964 tp_is_empty!5407))

(declare-fun array_inv!3138 (array!10014) Bool)

(assert (=> start!20964 (array_inv!3138 _keys!825)))

(assert (=> start!20964 tp!19684))

(declare-fun b!210438 () Bool)

(declare-fun res!102694 () Bool)

(assert (=> b!210438 (=> (not res!102694) (not e!137044))))

(declare-datatypes ((List!3068 0))(
  ( (Nil!3065) (Cons!3064 (h!3706 (_ BitVec 64)) (t!8013 List!3068)) )
))
(declare-fun arrayNoDuplicates!0 (array!10014 (_ BitVec 32) List!3068) Bool)

(assert (=> b!210438 (= res!102694 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3065))))

(declare-fun b!210439 () Bool)

(declare-fun res!102689 () Bool)

(assert (=> b!210439 (=> (not res!102689) (not e!137044))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210439 (= res!102689 (= (select (arr!4754 _keys!825) i!601) k!843))))

(declare-fun b!210440 () Bool)

(declare-fun res!102691 () Bool)

(assert (=> b!210440 (=> (not res!102691) (not e!137044))))

(assert (=> b!210440 (= res!102691 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5079 _keys!825))))))

(declare-fun b!210441 () Bool)

(declare-fun e!137042 () Bool)

(assert (=> b!210441 (= e!137042 tp_is_empty!5407)))

(declare-fun b!210442 () Bool)

(declare-fun res!102693 () Bool)

(assert (=> b!210442 (=> (not res!102693) (not e!137044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210442 (= res!102693 (validKeyInArray!0 k!843))))

(declare-fun b!210443 () Bool)

(declare-fun res!102688 () Bool)

(assert (=> b!210443 (=> (not res!102688) (not e!137044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10014 (_ BitVec 32)) Bool)

(assert (=> b!210443 (= res!102688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210444 () Bool)

(declare-fun e!137043 () Bool)

(assert (=> b!210444 (= e!137043 tp_is_empty!5407)))

(declare-fun b!210445 () Bool)

(declare-fun mapRes!9188 () Bool)

(assert (=> b!210445 (= e!137045 (and e!137043 mapRes!9188))))

(declare-fun condMapEmpty!9188 () Bool)

(declare-fun mapDefault!9188 () ValueCell!2360)

