; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84410 () Bool)

(assert start!84410)

(declare-fun b_free!19969 () Bool)

(declare-fun b_next!19969 () Bool)

(assert (=> start!84410 (= b_free!19969 (not b_next!19969))))

(declare-fun tp!69683 () Bool)

(declare-fun b_and!32021 () Bool)

(assert (=> start!84410 (= tp!69683 b_and!32021)))

(declare-fun b!986895 () Bool)

(declare-fun res!660364 () Bool)

(declare-fun e!556547 () Bool)

(assert (=> b!986895 (=> (not res!660364) (not e!556547))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62317 0))(
  ( (array!62318 (arr!30012 (Array (_ BitVec 32) (_ BitVec 64))) (size!30492 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62317)

(assert (=> b!986895 (= res!660364 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30492 _keys!1544))))))

(declare-fun mapNonEmpty!36806 () Bool)

(declare-fun mapRes!36806 () Bool)

(declare-fun tp!69682 () Bool)

(declare-fun e!556550 () Bool)

(assert (=> mapNonEmpty!36806 (= mapRes!36806 (and tp!69682 e!556550))))

(declare-datatypes ((V!35897 0))(
  ( (V!35898 (val!11643 Int)) )
))
(declare-datatypes ((ValueCell!11111 0))(
  ( (ValueCellFull!11111 (v!14205 V!35897)) (EmptyCell!11111) )
))
(declare-datatypes ((array!62319 0))(
  ( (array!62320 (arr!30013 (Array (_ BitVec 32) ValueCell!11111)) (size!30493 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62319)

(declare-fun mapValue!36806 () ValueCell!11111)

(declare-fun mapRest!36806 () (Array (_ BitVec 32) ValueCell!11111))

(declare-fun mapKey!36806 () (_ BitVec 32))

(assert (=> mapNonEmpty!36806 (= (arr!30013 _values!1278) (store mapRest!36806 mapKey!36806 mapValue!36806))))

(declare-fun b!986896 () Bool)

(declare-fun res!660362 () Bool)

(assert (=> b!986896 (=> (not res!660362) (not e!556547))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62317 (_ BitVec 32)) Bool)

(assert (=> b!986896 (= res!660362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986897 () Bool)

(declare-fun tp_is_empty!23185 () Bool)

(assert (=> b!986897 (= e!556550 tp_is_empty!23185)))

(declare-fun mapIsEmpty!36806 () Bool)

(assert (=> mapIsEmpty!36806 mapRes!36806))

(declare-fun b!986898 () Bool)

(declare-fun e!556548 () Bool)

(assert (=> b!986898 (= e!556548 tp_is_empty!23185)))

(declare-fun res!660363 () Bool)

(assert (=> start!84410 (=> (not res!660363) (not e!556547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84410 (= res!660363 (validMask!0 mask!1948))))

(assert (=> start!84410 e!556547))

(assert (=> start!84410 true))

(assert (=> start!84410 tp_is_empty!23185))

(declare-fun e!556546 () Bool)

(declare-fun array_inv!23051 (array!62319) Bool)

(assert (=> start!84410 (and (array_inv!23051 _values!1278) e!556546)))

(assert (=> start!84410 tp!69683))

(declare-fun array_inv!23052 (array!62317) Bool)

(assert (=> start!84410 (array_inv!23052 _keys!1544)))

(declare-fun b!986899 () Bool)

(declare-fun res!660360 () Bool)

(assert (=> b!986899 (=> (not res!660360) (not e!556547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986899 (= res!660360 (validKeyInArray!0 (select (arr!30012 _keys!1544) from!1932)))))

(declare-fun b!986900 () Bool)

(declare-fun res!660366 () Bool)

(assert (=> b!986900 (=> (not res!660366) (not e!556547))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986900 (= res!660366 (and (= (size!30493 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30492 _keys!1544) (size!30493 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986901 () Bool)

(declare-fun res!660361 () Bool)

(assert (=> b!986901 (=> (not res!660361) (not e!556547))))

(declare-datatypes ((List!20879 0))(
  ( (Nil!20876) (Cons!20875 (h!22037 (_ BitVec 64)) (t!29786 List!20879)) )
))
(declare-fun arrayNoDuplicates!0 (array!62317 (_ BitVec 32) List!20879) Bool)

(assert (=> b!986901 (= res!660361 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20876))))

(declare-fun b!986902 () Bool)

(assert (=> b!986902 (= e!556546 (and e!556548 mapRes!36806))))

(declare-fun condMapEmpty!36806 () Bool)

(declare-fun mapDefault!36806 () ValueCell!11111)

