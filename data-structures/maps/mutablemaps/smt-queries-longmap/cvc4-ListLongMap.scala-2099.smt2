; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35774 () Bool)

(assert start!35774)

(declare-fun b!359079 () Bool)

(declare-fun res!199656 () Bool)

(declare-fun e!219908 () Bool)

(assert (=> b!359079 (=> (not res!199656) (not e!219908))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19959 0))(
  ( (array!19960 (arr!9470 (Array (_ BitVec 32) (_ BitVec 64))) (size!9822 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19959)

(declare-datatypes ((V!11935 0))(
  ( (V!11936 (val!4154 Int)) )
))
(declare-datatypes ((ValueCell!3766 0))(
  ( (ValueCellFull!3766 (v!6344 V!11935)) (EmptyCell!3766) )
))
(declare-datatypes ((array!19961 0))(
  ( (array!19962 (arr!9471 (Array (_ BitVec 32) ValueCell!3766)) (size!9823 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19961)

(assert (=> b!359079 (= res!199656 (and (= (size!9823 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9822 _keys!1456) (size!9823 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359080 () Bool)

(assert (=> b!359080 (= e!219908 false)))

(declare-fun lt!166276 () Bool)

(declare-datatypes ((List!5485 0))(
  ( (Nil!5482) (Cons!5481 (h!6337 (_ BitVec 64)) (t!10643 List!5485)) )
))
(declare-fun arrayNoDuplicates!0 (array!19959 (_ BitVec 32) List!5485) Bool)

(assert (=> b!359080 (= lt!166276 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5482))))

(declare-fun mapNonEmpty!13836 () Bool)

(declare-fun mapRes!13836 () Bool)

(declare-fun tp!27903 () Bool)

(declare-fun e!219910 () Bool)

(assert (=> mapNonEmpty!13836 (= mapRes!13836 (and tp!27903 e!219910))))

(declare-fun mapRest!13836 () (Array (_ BitVec 32) ValueCell!3766))

(declare-fun mapKey!13836 () (_ BitVec 32))

(declare-fun mapValue!13836 () ValueCell!3766)

(assert (=> mapNonEmpty!13836 (= (arr!9471 _values!1208) (store mapRest!13836 mapKey!13836 mapValue!13836))))

(declare-fun b!359081 () Bool)

(declare-fun tp_is_empty!8219 () Bool)

(assert (=> b!359081 (= e!219910 tp_is_empty!8219)))

(declare-fun b!359082 () Bool)

(declare-fun res!199657 () Bool)

(assert (=> b!359082 (=> (not res!199657) (not e!219908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19959 (_ BitVec 32)) Bool)

(assert (=> b!359082 (= res!199657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199655 () Bool)

(assert (=> start!35774 (=> (not res!199655) (not e!219908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35774 (= res!199655 (validMask!0 mask!1842))))

(assert (=> start!35774 e!219908))

(assert (=> start!35774 true))

(declare-fun e!219909 () Bool)

(declare-fun array_inv!6968 (array!19961) Bool)

(assert (=> start!35774 (and (array_inv!6968 _values!1208) e!219909)))

(declare-fun array_inv!6969 (array!19959) Bool)

(assert (=> start!35774 (array_inv!6969 _keys!1456)))

(declare-fun mapIsEmpty!13836 () Bool)

(assert (=> mapIsEmpty!13836 mapRes!13836))

(declare-fun b!359083 () Bool)

(declare-fun e!219911 () Bool)

(assert (=> b!359083 (= e!219911 tp_is_empty!8219)))

(declare-fun b!359084 () Bool)

(assert (=> b!359084 (= e!219909 (and e!219911 mapRes!13836))))

(declare-fun condMapEmpty!13836 () Bool)

(declare-fun mapDefault!13836 () ValueCell!3766)

