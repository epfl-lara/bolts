; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35590 () Bool)

(assert start!35590)

(declare-fun b!356587 () Bool)

(declare-fun res!197998 () Bool)

(declare-fun e!218449 () Bool)

(assert (=> b!356587 (=> (not res!197998) (not e!218449))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356587 (= res!197998 (validKeyInArray!0 k!1077))))

(declare-fun b!356588 () Bool)

(declare-fun res!197991 () Bool)

(assert (=> b!356588 (=> (not res!197991) (not e!218449))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19607 0))(
  ( (array!19608 (arr!9294 (Array (_ BitVec 32) (_ BitVec 64))) (size!9646 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19607)

(assert (=> b!356588 (= res!197991 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9646 _keys!1456))))))

(declare-fun res!197995 () Bool)

(assert (=> start!35590 (=> (not res!197995) (not e!218449))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35590 (= res!197995 (validMask!0 mask!1842))))

(assert (=> start!35590 e!218449))

(declare-fun tp_is_empty!8035 () Bool)

(assert (=> start!35590 tp_is_empty!8035))

(assert (=> start!35590 true))

(declare-fun array_inv!6844 (array!19607) Bool)

(assert (=> start!35590 (array_inv!6844 _keys!1456)))

(declare-datatypes ((V!11691 0))(
  ( (V!11692 (val!4062 Int)) )
))
(declare-datatypes ((ValueCell!3674 0))(
  ( (ValueCellFull!3674 (v!6252 V!11691)) (EmptyCell!3674) )
))
(declare-datatypes ((array!19609 0))(
  ( (array!19610 (arr!9295 (Array (_ BitVec 32) ValueCell!3674)) (size!9647 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19609)

(declare-fun e!218447 () Bool)

(declare-fun array_inv!6845 (array!19609) Bool)

(assert (=> start!35590 (and (array_inv!6845 _values!1208) e!218447)))

(declare-fun mapIsEmpty!13560 () Bool)

(declare-fun mapRes!13560 () Bool)

(assert (=> mapIsEmpty!13560 mapRes!13560))

(declare-fun b!356589 () Bool)

(declare-fun res!197996 () Bool)

(assert (=> b!356589 (=> (not res!197996) (not e!218449))))

(declare-datatypes ((List!5398 0))(
  ( (Nil!5395) (Cons!5394 (h!6250 (_ BitVec 64)) (t!10556 List!5398)) )
))
(declare-fun arrayNoDuplicates!0 (array!19607 (_ BitVec 32) List!5398) Bool)

(assert (=> b!356589 (= res!197996 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5395))))

(declare-fun b!356590 () Bool)

(declare-fun res!197997 () Bool)

(assert (=> b!356590 (=> (not res!197997) (not e!218449))))

(declare-fun arrayContainsKey!0 (array!19607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356590 (= res!197997 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356591 () Bool)

(declare-fun res!197993 () Bool)

(assert (=> b!356591 (=> (not res!197993) (not e!218449))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!356591 (= res!197993 (and (= (size!9647 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9646 _keys!1456) (size!9647 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356592 () Bool)

(declare-fun e!218448 () Bool)

(assert (=> b!356592 (= e!218448 tp_is_empty!8035)))

(declare-fun mapNonEmpty!13560 () Bool)

(declare-fun tp!27537 () Bool)

(declare-fun e!218446 () Bool)

(assert (=> mapNonEmpty!13560 (= mapRes!13560 (and tp!27537 e!218446))))

(declare-fun mapKey!13560 () (_ BitVec 32))

(declare-fun mapRest!13560 () (Array (_ BitVec 32) ValueCell!3674))

(declare-fun mapValue!13560 () ValueCell!3674)

(assert (=> mapNonEmpty!13560 (= (arr!9295 _values!1208) (store mapRest!13560 mapKey!13560 mapValue!13560))))

(declare-fun b!356593 () Bool)

(assert (=> b!356593 (= e!218446 tp_is_empty!8035)))

(declare-fun b!356594 () Bool)

(assert (=> b!356594 (= e!218449 (not true))))

(assert (=> b!356594 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11691)

(declare-datatypes ((Unit!10985 0))(
  ( (Unit!10986) )
))
(declare-fun lt!165928 () Unit!10985)

(declare-fun zeroValue!1150 () V!11691)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!13 (array!19607 array!19609 (_ BitVec 32) (_ BitVec 32) V!11691 V!11691 (_ BitVec 64) (_ BitVec 32)) Unit!10985)

(assert (=> b!356594 (= lt!165928 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!13 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356595 () Bool)

(declare-fun res!197994 () Bool)

(assert (=> b!356595 (=> (not res!197994) (not e!218449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19607 (_ BitVec 32)) Bool)

(assert (=> b!356595 (= res!197994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356596 () Bool)

(declare-fun res!197992 () Bool)

(assert (=> b!356596 (=> (not res!197992) (not e!218449))))

(assert (=> b!356596 (= res!197992 (not (= (select (arr!9294 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356597 () Bool)

(assert (=> b!356597 (= e!218447 (and e!218448 mapRes!13560))))

(declare-fun condMapEmpty!13560 () Bool)

(declare-fun mapDefault!13560 () ValueCell!3674)

