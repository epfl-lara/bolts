; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35566 () Bool)

(assert start!35566)

(declare-fun b!356191 () Bool)

(declare-fun res!197707 () Bool)

(declare-fun e!218267 () Bool)

(assert (=> b!356191 (=> (not res!197707) (not e!218267))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356191 (= res!197707 (validKeyInArray!0 k!1077))))

(declare-fun b!356192 () Bool)

(declare-fun res!197710 () Bool)

(assert (=> b!356192 (=> (not res!197710) (not e!218267))))

(declare-datatypes ((array!19561 0))(
  ( (array!19562 (arr!9271 (Array (_ BitVec 32) (_ BitVec 64))) (size!9623 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19561)

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!356192 (= res!197710 (not (= (select (arr!9271 _keys!1456) from!1805) k!1077)))))

(declare-fun b!356193 () Bool)

(declare-fun res!197703 () Bool)

(assert (=> b!356193 (=> (not res!197703) (not e!218267))))

(declare-fun arrayContainsKey!0 (array!19561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356193 (= res!197703 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!356194 () Bool)

(assert (=> b!356194 (= e!218267 (not true))))

(assert (=> b!356194 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11659 0))(
  ( (V!11660 (val!4050 Int)) )
))
(declare-fun minValue!1150 () V!11659)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!10967 0))(
  ( (Unit!10968) )
))
(declare-fun lt!165892 () Unit!10967)

(declare-datatypes ((ValueCell!3662 0))(
  ( (ValueCellFull!3662 (v!6240 V!11659)) (EmptyCell!3662) )
))
(declare-datatypes ((array!19563 0))(
  ( (array!19564 (arr!9272 (Array (_ BitVec 32) ValueCell!3662)) (size!9624 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19563)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11659)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!4 (array!19561 array!19563 (_ BitVec 32) (_ BitVec 32) V!11659 V!11659 (_ BitVec 64) (_ BitVec 32)) Unit!10967)

(assert (=> b!356194 (= lt!165892 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!4 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!356195 () Bool)

(declare-fun res!197709 () Bool)

(assert (=> b!356195 (=> (not res!197709) (not e!218267))))

(assert (=> b!356195 (= res!197709 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9623 _keys!1456))))))

(declare-fun b!356196 () Bool)

(declare-fun res!197706 () Bool)

(assert (=> b!356196 (=> (not res!197706) (not e!218267))))

(declare-datatypes ((List!5388 0))(
  ( (Nil!5385) (Cons!5384 (h!6240 (_ BitVec 64)) (t!10546 List!5388)) )
))
(declare-fun arrayNoDuplicates!0 (array!19561 (_ BitVec 32) List!5388) Bool)

(assert (=> b!356196 (= res!197706 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5385))))

(declare-fun b!356197 () Bool)

(declare-fun res!197705 () Bool)

(assert (=> b!356197 (=> (not res!197705) (not e!218267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19561 (_ BitVec 32)) Bool)

(assert (=> b!356197 (= res!197705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13524 () Bool)

(declare-fun mapRes!13524 () Bool)

(assert (=> mapIsEmpty!13524 mapRes!13524))

(declare-fun b!356198 () Bool)

(declare-fun res!197708 () Bool)

(assert (=> b!356198 (=> (not res!197708) (not e!218267))))

(assert (=> b!356198 (= res!197708 (and (= (size!9624 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9623 _keys!1456) (size!9624 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356199 () Bool)

(declare-fun e!218266 () Bool)

(declare-fun tp_is_empty!8011 () Bool)

(assert (=> b!356199 (= e!218266 tp_is_empty!8011)))

(declare-fun mapNonEmpty!13524 () Bool)

(declare-fun tp!27501 () Bool)

(assert (=> mapNonEmpty!13524 (= mapRes!13524 (and tp!27501 e!218266))))

(declare-fun mapKey!13524 () (_ BitVec 32))

(declare-fun mapRest!13524 () (Array (_ BitVec 32) ValueCell!3662))

(declare-fun mapValue!13524 () ValueCell!3662)

(assert (=> mapNonEmpty!13524 (= (arr!9272 _values!1208) (store mapRest!13524 mapKey!13524 mapValue!13524))))

(declare-fun b!356201 () Bool)

(declare-fun e!218268 () Bool)

(declare-fun e!218270 () Bool)

(assert (=> b!356201 (= e!218268 (and e!218270 mapRes!13524))))

(declare-fun condMapEmpty!13524 () Bool)

(declare-fun mapDefault!13524 () ValueCell!3662)

