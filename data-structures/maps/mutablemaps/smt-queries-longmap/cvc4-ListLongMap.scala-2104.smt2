; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35804 () Bool)

(assert start!35804)

(declare-fun b!359349 () Bool)

(declare-fun e!220135 () Bool)

(declare-fun tp_is_empty!8249 () Bool)

(assert (=> b!359349 (= e!220135 tp_is_empty!8249)))

(declare-fun b!359350 () Bool)

(declare-fun res!199790 () Bool)

(declare-fun e!220134 () Bool)

(assert (=> b!359350 (=> (not res!199790) (not e!220134))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!20019 0))(
  ( (array!20020 (arr!9500 (Array (_ BitVec 32) (_ BitVec 64))) (size!9852 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20019)

(declare-datatypes ((V!11975 0))(
  ( (V!11976 (val!4169 Int)) )
))
(declare-datatypes ((ValueCell!3781 0))(
  ( (ValueCellFull!3781 (v!6359 V!11975)) (EmptyCell!3781) )
))
(declare-datatypes ((array!20021 0))(
  ( (array!20022 (arr!9501 (Array (_ BitVec 32) ValueCell!3781)) (size!9853 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20021)

(assert (=> b!359350 (= res!199790 (and (= (size!9853 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9852 _keys!1456) (size!9853 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359351 () Bool)

(declare-fun e!220136 () Bool)

(assert (=> b!359351 (= e!220136 tp_is_empty!8249)))

(declare-fun b!359352 () Bool)

(assert (=> b!359352 (= e!220134 false)))

(declare-fun lt!166321 () Bool)

(declare-datatypes ((List!5495 0))(
  ( (Nil!5492) (Cons!5491 (h!6347 (_ BitVec 64)) (t!10653 List!5495)) )
))
(declare-fun arrayNoDuplicates!0 (array!20019 (_ BitVec 32) List!5495) Bool)

(assert (=> b!359352 (= lt!166321 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5492))))

(declare-fun b!359353 () Bool)

(declare-fun res!199792 () Bool)

(assert (=> b!359353 (=> (not res!199792) (not e!220134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20019 (_ BitVec 32)) Bool)

(assert (=> b!359353 (= res!199792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13881 () Bool)

(declare-fun mapRes!13881 () Bool)

(declare-fun tp!27948 () Bool)

(assert (=> mapNonEmpty!13881 (= mapRes!13881 (and tp!27948 e!220135))))

(declare-fun mapRest!13881 () (Array (_ BitVec 32) ValueCell!3781))

(declare-fun mapValue!13881 () ValueCell!3781)

(declare-fun mapKey!13881 () (_ BitVec 32))

(assert (=> mapNonEmpty!13881 (= (arr!9501 _values!1208) (store mapRest!13881 mapKey!13881 mapValue!13881))))

(declare-fun res!199791 () Bool)

(assert (=> start!35804 (=> (not res!199791) (not e!220134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35804 (= res!199791 (validMask!0 mask!1842))))

(assert (=> start!35804 e!220134))

(assert (=> start!35804 true))

(declare-fun e!220133 () Bool)

(declare-fun array_inv!6992 (array!20021) Bool)

(assert (=> start!35804 (and (array_inv!6992 _values!1208) e!220133)))

(declare-fun array_inv!6993 (array!20019) Bool)

(assert (=> start!35804 (array_inv!6993 _keys!1456)))

(declare-fun b!359354 () Bool)

(assert (=> b!359354 (= e!220133 (and e!220136 mapRes!13881))))

(declare-fun condMapEmpty!13881 () Bool)

(declare-fun mapDefault!13881 () ValueCell!3781)

