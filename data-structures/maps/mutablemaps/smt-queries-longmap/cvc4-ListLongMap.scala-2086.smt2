; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35696 () Bool)

(assert start!35696)

(declare-fun b!358278 () Bool)

(declare-fun res!199207 () Bool)

(declare-fun e!219323 () Bool)

(assert (=> b!358278 (=> (not res!199207) (not e!219323))))

(declare-datatypes ((array!19811 0))(
  ( (array!19812 (arr!9396 (Array (_ BitVec 32) (_ BitVec 64))) (size!9748 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19811)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19811 (_ BitVec 32)) Bool)

(assert (=> b!358278 (= res!199207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358279 () Bool)

(declare-fun e!219322 () Bool)

(declare-fun tp_is_empty!8141 () Bool)

(assert (=> b!358279 (= e!219322 tp_is_empty!8141)))

(declare-fun b!358280 () Bool)

(declare-fun e!219325 () Bool)

(assert (=> b!358280 (= e!219325 tp_is_empty!8141)))

(declare-fun res!199206 () Bool)

(assert (=> start!35696 (=> (not res!199206) (not e!219323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35696 (= res!199206 (validMask!0 mask!1842))))

(assert (=> start!35696 e!219323))

(assert (=> start!35696 true))

(declare-datatypes ((V!11831 0))(
  ( (V!11832 (val!4115 Int)) )
))
(declare-datatypes ((ValueCell!3727 0))(
  ( (ValueCellFull!3727 (v!6305 V!11831)) (EmptyCell!3727) )
))
(declare-datatypes ((array!19813 0))(
  ( (array!19814 (arr!9397 (Array (_ BitVec 32) ValueCell!3727)) (size!9749 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19813)

(declare-fun e!219326 () Bool)

(declare-fun array_inv!6906 (array!19813) Bool)

(assert (=> start!35696 (and (array_inv!6906 _values!1208) e!219326)))

(declare-fun array_inv!6907 (array!19811) Bool)

(assert (=> start!35696 (array_inv!6907 _keys!1456)))

(declare-fun b!358281 () Bool)

(declare-fun mapRes!13719 () Bool)

(assert (=> b!358281 (= e!219326 (and e!219325 mapRes!13719))))

(declare-fun condMapEmpty!13719 () Bool)

(declare-fun mapDefault!13719 () ValueCell!3727)

