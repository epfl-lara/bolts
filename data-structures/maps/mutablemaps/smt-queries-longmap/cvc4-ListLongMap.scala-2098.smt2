; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35768 () Bool)

(assert start!35768)

(declare-fun b!359025 () Bool)

(declare-fun e!219863 () Bool)

(assert (=> b!359025 (= e!219863 false)))

(declare-fun lt!166267 () Bool)

(declare-datatypes ((array!19947 0))(
  ( (array!19948 (arr!9464 (Array (_ BitVec 32) (_ BitVec 64))) (size!9816 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19947)

(declare-datatypes ((List!5482 0))(
  ( (Nil!5479) (Cons!5478 (h!6334 (_ BitVec 64)) (t!10640 List!5482)) )
))
(declare-fun arrayNoDuplicates!0 (array!19947 (_ BitVec 32) List!5482) Bool)

(assert (=> b!359025 (= lt!166267 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5479))))

(declare-fun res!199630 () Bool)

(assert (=> start!35768 (=> (not res!199630) (not e!219863))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35768 (= res!199630 (validMask!0 mask!1842))))

(assert (=> start!35768 e!219863))

(assert (=> start!35768 true))

(declare-datatypes ((V!11927 0))(
  ( (V!11928 (val!4151 Int)) )
))
(declare-datatypes ((ValueCell!3763 0))(
  ( (ValueCellFull!3763 (v!6341 V!11927)) (EmptyCell!3763) )
))
(declare-datatypes ((array!19949 0))(
  ( (array!19950 (arr!9465 (Array (_ BitVec 32) ValueCell!3763)) (size!9817 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19949)

(declare-fun e!219864 () Bool)

(declare-fun array_inv!6964 (array!19949) Bool)

(assert (=> start!35768 (and (array_inv!6964 _values!1208) e!219864)))

(declare-fun array_inv!6965 (array!19947) Bool)

(assert (=> start!35768 (array_inv!6965 _keys!1456)))

(declare-fun b!359026 () Bool)

(declare-fun e!219862 () Bool)

(declare-fun mapRes!13827 () Bool)

(assert (=> b!359026 (= e!219864 (and e!219862 mapRes!13827))))

(declare-fun condMapEmpty!13827 () Bool)

(declare-fun mapDefault!13827 () ValueCell!3763)

