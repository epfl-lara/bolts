; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35396 () Bool)

(assert start!35396)

(declare-fun b!354075 () Bool)

(declare-fun e!216992 () Bool)

(declare-fun tp_is_empty!7841 () Bool)

(assert (=> b!354075 (= e!216992 tp_is_empty!7841)))

(declare-fun mapNonEmpty!13269 () Bool)

(declare-fun mapRes!13269 () Bool)

(declare-fun tp!27165 () Bool)

(assert (=> mapNonEmpty!13269 (= mapRes!13269 (and tp!27165 e!216992))))

(declare-fun mapKey!13269 () (_ BitVec 32))

(declare-datatypes ((V!11431 0))(
  ( (V!11432 (val!3965 Int)) )
))
(declare-datatypes ((ValueCell!3577 0))(
  ( (ValueCellFull!3577 (v!6155 V!11431)) (EmptyCell!3577) )
))
(declare-fun mapRest!13269 () (Array (_ BitVec 32) ValueCell!3577))

(declare-datatypes ((array!19239 0))(
  ( (array!19240 (arr!9110 (Array (_ BitVec 32) ValueCell!3577)) (size!9462 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19239)

(declare-fun mapValue!13269 () ValueCell!3577)

(assert (=> mapNonEmpty!13269 (= (arr!9110 _values!1208) (store mapRest!13269 mapKey!13269 mapValue!13269))))

(declare-fun res!196352 () Bool)

(declare-fun e!216993 () Bool)

(assert (=> start!35396 (=> (not res!196352) (not e!216993))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35396 (= res!196352 (validMask!0 mask!1842))))

(assert (=> start!35396 e!216993))

(assert (=> start!35396 true))

(declare-fun e!216994 () Bool)

(declare-fun array_inv!6704 (array!19239) Bool)

(assert (=> start!35396 (and (array_inv!6704 _values!1208) e!216994)))

(declare-datatypes ((array!19241 0))(
  ( (array!19242 (arr!9111 (Array (_ BitVec 32) (_ BitVec 64))) (size!9463 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19241)

(declare-fun array_inv!6705 (array!19241) Bool)

(assert (=> start!35396 (array_inv!6705 _keys!1456)))

(declare-fun b!354076 () Bool)

(declare-fun res!196353 () Bool)

(assert (=> b!354076 (=> (not res!196353) (not e!216993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19241 (_ BitVec 32)) Bool)

(assert (=> b!354076 (= res!196353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354077 () Bool)

(declare-fun e!216991 () Bool)

(assert (=> b!354077 (= e!216991 tp_is_empty!7841)))

(declare-fun b!354078 () Bool)

(declare-fun res!196354 () Bool)

(assert (=> b!354078 (=> (not res!196354) (not e!216993))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354078 (= res!196354 (and (= (size!9462 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9463 _keys!1456) (size!9462 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354079 () Bool)

(assert (=> b!354079 (= e!216993 false)))

(declare-fun lt!165637 () Bool)

(declare-datatypes ((List!5311 0))(
  ( (Nil!5308) (Cons!5307 (h!6163 (_ BitVec 64)) (t!10469 List!5311)) )
))
(declare-fun arrayNoDuplicates!0 (array!19241 (_ BitVec 32) List!5311) Bool)

(assert (=> b!354079 (= lt!165637 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5308))))

(declare-fun b!354080 () Bool)

(assert (=> b!354080 (= e!216994 (and e!216991 mapRes!13269))))

(declare-fun condMapEmpty!13269 () Bool)

(declare-fun mapDefault!13269 () ValueCell!3577)

