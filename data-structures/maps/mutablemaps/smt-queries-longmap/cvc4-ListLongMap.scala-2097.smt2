; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35762 () Bool)

(assert start!35762)

(declare-fun b!358971 () Bool)

(declare-fun res!199601 () Bool)

(declare-fun e!219819 () Bool)

(assert (=> b!358971 (=> (not res!199601) (not e!219819))))

(declare-datatypes ((array!19935 0))(
  ( (array!19936 (arr!9458 (Array (_ BitVec 32) (_ BitVec 64))) (size!9810 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19935)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19935 (_ BitVec 32)) Bool)

(assert (=> b!358971 (= res!199601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358972 () Bool)

(assert (=> b!358972 (= e!219819 false)))

(declare-fun lt!166258 () Bool)

(declare-datatypes ((List!5479 0))(
  ( (Nil!5476) (Cons!5475 (h!6331 (_ BitVec 64)) (t!10637 List!5479)) )
))
(declare-fun arrayNoDuplicates!0 (array!19935 (_ BitVec 32) List!5479) Bool)

(assert (=> b!358972 (= lt!166258 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5476))))

(declare-fun b!358973 () Bool)

(declare-fun res!199603 () Bool)

(assert (=> b!358973 (=> (not res!199603) (not e!219819))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11919 0))(
  ( (V!11920 (val!4148 Int)) )
))
(declare-datatypes ((ValueCell!3760 0))(
  ( (ValueCellFull!3760 (v!6338 V!11919)) (EmptyCell!3760) )
))
(declare-datatypes ((array!19937 0))(
  ( (array!19938 (arr!9459 (Array (_ BitVec 32) ValueCell!3760)) (size!9811 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19937)

(assert (=> b!358973 (= res!199603 (and (= (size!9811 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9810 _keys!1456) (size!9811 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199602 () Bool)

(assert (=> start!35762 (=> (not res!199602) (not e!219819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35762 (= res!199602 (validMask!0 mask!1842))))

(assert (=> start!35762 e!219819))

(assert (=> start!35762 true))

(declare-fun e!219818 () Bool)

(declare-fun array_inv!6958 (array!19937) Bool)

(assert (=> start!35762 (and (array_inv!6958 _values!1208) e!219818)))

(declare-fun array_inv!6959 (array!19935) Bool)

(assert (=> start!35762 (array_inv!6959 _keys!1456)))

(declare-fun mapNonEmpty!13818 () Bool)

(declare-fun mapRes!13818 () Bool)

(declare-fun tp!27885 () Bool)

(declare-fun e!219817 () Bool)

(assert (=> mapNonEmpty!13818 (= mapRes!13818 (and tp!27885 e!219817))))

(declare-fun mapKey!13818 () (_ BitVec 32))

(declare-fun mapValue!13818 () ValueCell!3760)

(declare-fun mapRest!13818 () (Array (_ BitVec 32) ValueCell!3760))

(assert (=> mapNonEmpty!13818 (= (arr!9459 _values!1208) (store mapRest!13818 mapKey!13818 mapValue!13818))))

(declare-fun b!358974 () Bool)

(declare-fun tp_is_empty!8207 () Bool)

(assert (=> b!358974 (= e!219817 tp_is_empty!8207)))

(declare-fun b!358975 () Bool)

(declare-fun e!219821 () Bool)

(assert (=> b!358975 (= e!219821 tp_is_empty!8207)))

(declare-fun b!358976 () Bool)

(assert (=> b!358976 (= e!219818 (and e!219821 mapRes!13818))))

(declare-fun condMapEmpty!13818 () Bool)

(declare-fun mapDefault!13818 () ValueCell!3760)

