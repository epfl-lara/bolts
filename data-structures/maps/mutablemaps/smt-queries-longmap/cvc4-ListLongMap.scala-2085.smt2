; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35690 () Bool)

(assert start!35690)

(declare-fun b!358224 () Bool)

(declare-fun e!219279 () Bool)

(assert (=> b!358224 (= e!219279 false)))

(declare-fun lt!166150 () Bool)

(declare-datatypes ((array!19799 0))(
  ( (array!19800 (arr!9390 (Array (_ BitVec 32) (_ BitVec 64))) (size!9742 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19799)

(declare-datatypes ((List!5450 0))(
  ( (Nil!5447) (Cons!5446 (h!6302 (_ BitVec 64)) (t!10608 List!5450)) )
))
(declare-fun arrayNoDuplicates!0 (array!19799 (_ BitVec 32) List!5450) Bool)

(assert (=> b!358224 (= lt!166150 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5447))))

(declare-fun mapIsEmpty!13710 () Bool)

(declare-fun mapRes!13710 () Bool)

(assert (=> mapIsEmpty!13710 mapRes!13710))

(declare-fun mapNonEmpty!13710 () Bool)

(declare-fun tp!27768 () Bool)

(declare-fun e!219281 () Bool)

(assert (=> mapNonEmpty!13710 (= mapRes!13710 (and tp!27768 e!219281))))

(declare-fun mapKey!13710 () (_ BitVec 32))

(declare-datatypes ((V!11823 0))(
  ( (V!11824 (val!4112 Int)) )
))
(declare-datatypes ((ValueCell!3724 0))(
  ( (ValueCellFull!3724 (v!6302 V!11823)) (EmptyCell!3724) )
))
(declare-fun mapRest!13710 () (Array (_ BitVec 32) ValueCell!3724))

(declare-datatypes ((array!19801 0))(
  ( (array!19802 (arr!9391 (Array (_ BitVec 32) ValueCell!3724)) (size!9743 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19801)

(declare-fun mapValue!13710 () ValueCell!3724)

(assert (=> mapNonEmpty!13710 (= (arr!9391 _values!1208) (store mapRest!13710 mapKey!13710 mapValue!13710))))

(declare-fun res!199180 () Bool)

(assert (=> start!35690 (=> (not res!199180) (not e!219279))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35690 (= res!199180 (validMask!0 mask!1842))))

(assert (=> start!35690 e!219279))

(assert (=> start!35690 true))

(declare-fun e!219278 () Bool)

(declare-fun array_inv!6900 (array!19801) Bool)

(assert (=> start!35690 (and (array_inv!6900 _values!1208) e!219278)))

(declare-fun array_inv!6901 (array!19799) Bool)

(assert (=> start!35690 (array_inv!6901 _keys!1456)))

(declare-fun b!358225 () Bool)

(declare-fun e!219280 () Bool)

(assert (=> b!358225 (= e!219278 (and e!219280 mapRes!13710))))

(declare-fun condMapEmpty!13710 () Bool)

(declare-fun mapDefault!13710 () ValueCell!3724)

