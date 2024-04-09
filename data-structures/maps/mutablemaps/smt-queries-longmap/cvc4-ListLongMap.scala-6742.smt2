; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84548 () Bool)

(assert start!84548)

(declare-fun b_free!20015 () Bool)

(declare-fun b_next!20015 () Bool)

(assert (=> start!84548 (= b_free!20015 (not b_next!20015))))

(declare-fun tp!69831 () Bool)

(declare-fun b_and!32127 () Bool)

(assert (=> start!84548 (= tp!69831 b_and!32127)))

(declare-fun b!988402 () Bool)

(declare-fun e!557378 () Bool)

(declare-fun tp_is_empty!23231 () Bool)

(assert (=> b!988402 (= e!557378 tp_is_empty!23231)))

(declare-fun mapNonEmpty!36885 () Bool)

(declare-fun mapRes!36885 () Bool)

(declare-fun tp!69830 () Bool)

(declare-fun e!557382 () Bool)

(assert (=> mapNonEmpty!36885 (= mapRes!36885 (and tp!69830 e!557382))))

(declare-datatypes ((V!35957 0))(
  ( (V!35958 (val!11666 Int)) )
))
(declare-datatypes ((ValueCell!11134 0))(
  ( (ValueCellFull!11134 (v!14233 V!35957)) (EmptyCell!11134) )
))
(declare-datatypes ((array!62411 0))(
  ( (array!62412 (arr!30056 (Array (_ BitVec 32) ValueCell!11134)) (size!30536 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62411)

(declare-fun mapKey!36885 () (_ BitVec 32))

(declare-fun mapValue!36885 () ValueCell!11134)

(declare-fun mapRest!36885 () (Array (_ BitVec 32) ValueCell!11134))

(assert (=> mapNonEmpty!36885 (= (arr!30056 _values!1278) (store mapRest!36885 mapKey!36885 mapValue!36885))))

(declare-fun b!988403 () Bool)

(assert (=> b!988403 (= e!557382 tp_is_empty!23231)))

(declare-fun res!661191 () Bool)

(declare-fun e!557380 () Bool)

(assert (=> start!84548 (=> (not res!661191) (not e!557380))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84548 (= res!661191 (validMask!0 mask!1948))))

(assert (=> start!84548 e!557380))

(assert (=> start!84548 true))

(assert (=> start!84548 tp_is_empty!23231))

(declare-fun e!557379 () Bool)

(declare-fun array_inv!23079 (array!62411) Bool)

(assert (=> start!84548 (and (array_inv!23079 _values!1278) e!557379)))

(assert (=> start!84548 tp!69831))

(declare-datatypes ((array!62413 0))(
  ( (array!62414 (arr!30057 (Array (_ BitVec 32) (_ BitVec 64))) (size!30537 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62413)

(declare-fun array_inv!23080 (array!62413) Bool)

(assert (=> start!84548 (array_inv!23080 _keys!1544)))

(declare-fun mapIsEmpty!36885 () Bool)

(assert (=> mapIsEmpty!36885 mapRes!36885))

(declare-fun b!988404 () Bool)

(assert (=> b!988404 (= e!557380 false)))

(declare-fun minValue!1220 () V!35957)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14962 0))(
  ( (tuple2!14963 (_1!7491 (_ BitVec 64)) (_2!7491 V!35957)) )
))
(declare-datatypes ((List!20914 0))(
  ( (Nil!20911) (Cons!20910 (h!22072 tuple2!14962) (t!29859 List!20914)) )
))
(declare-datatypes ((ListLongMap!13673 0))(
  ( (ListLongMap!13674 (toList!6852 List!20914)) )
))
(declare-fun lt!438474 () ListLongMap!13673)

(declare-fun zeroValue!1220 () V!35957)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3502 (array!62413 array!62411 (_ BitVec 32) (_ BitVec 32) V!35957 V!35957 (_ BitVec 32) Int) ListLongMap!13673)

(assert (=> b!988404 (= lt!438474 (getCurrentListMapNoExtraKeys!3502 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988405 () Bool)

(declare-fun res!661189 () Bool)

(assert (=> b!988405 (=> (not res!661189) (not e!557380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988405 (= res!661189 (validKeyInArray!0 (select (arr!30057 _keys!1544) from!1932)))))

(declare-fun b!988406 () Bool)

(declare-fun res!661195 () Bool)

(assert (=> b!988406 (=> (not res!661195) (not e!557380))))

(declare-datatypes ((List!20915 0))(
  ( (Nil!20912) (Cons!20911 (h!22073 (_ BitVec 64)) (t!29860 List!20915)) )
))
(declare-fun arrayNoDuplicates!0 (array!62413 (_ BitVec 32) List!20915) Bool)

(assert (=> b!988406 (= res!661195 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20912))))

(declare-fun b!988407 () Bool)

(declare-fun res!661194 () Bool)

(assert (=> b!988407 (=> (not res!661194) (not e!557380))))

(assert (=> b!988407 (= res!661194 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30537 _keys!1544))))))

(declare-fun b!988408 () Bool)

(assert (=> b!988408 (= e!557379 (and e!557378 mapRes!36885))))

(declare-fun condMapEmpty!36885 () Bool)

(declare-fun mapDefault!36885 () ValueCell!11134)

