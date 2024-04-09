; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4640 () Bool)

(assert start!4640)

(declare-fun b_free!1289 () Bool)

(declare-fun b_next!1289 () Bool)

(assert (=> start!4640 (= b_free!1289 (not b_next!1289))))

(declare-fun tp!5317 () Bool)

(declare-fun b_and!2125 () Bool)

(assert (=> start!4640 (= tp!5317 b_and!2125)))

(declare-fun mapNonEmpty!2024 () Bool)

(declare-fun mapRes!2024 () Bool)

(declare-fun tp!5318 () Bool)

(declare-fun e!22928 () Bool)

(assert (=> mapNonEmpty!2024 (= mapRes!2024 (and tp!5318 e!22928))))

(declare-datatypes ((V!2015 0))(
  ( (V!2016 (val!848 Int)) )
))
(declare-datatypes ((ValueCell!622 0))(
  ( (ValueCellFull!622 (v!1948 V!2015)) (EmptyCell!622) )
))
(declare-fun mapRest!2024 () (Array (_ BitVec 32) ValueCell!622))

(declare-datatypes ((array!2499 0))(
  ( (array!2500 (arr!1193 (Array (_ BitVec 32) ValueCell!622)) (size!1294 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2499)

(declare-fun mapKey!2024 () (_ BitVec 32))

(declare-fun mapValue!2024 () ValueCell!622)

(assert (=> mapNonEmpty!2024 (= (arr!1193 _values!1501) (store mapRest!2024 mapKey!2024 mapValue!2024))))

(declare-fun b!36311 () Bool)

(declare-fun e!22929 () Bool)

(declare-fun tp_is_empty!1643 () Bool)

(assert (=> b!36311 (= e!22929 tp_is_empty!1643)))

(declare-fun b!36312 () Bool)

(declare-fun res!21958 () Bool)

(declare-fun e!22930 () Bool)

(assert (=> b!36312 (=> (not res!21958) (not e!22930))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!36312 (= res!21958 (validKeyInArray!0 k!1304))))

(declare-fun b!36313 () Bool)

(assert (=> b!36313 (= e!22928 tp_is_empty!1643)))

(declare-fun b!36315 () Bool)

(declare-fun res!21960 () Bool)

(assert (=> b!36315 (=> (not res!21960) (not e!22930))))

(declare-datatypes ((array!2501 0))(
  ( (array!2502 (arr!1194 (Array (_ BitVec 32) (_ BitVec 64))) (size!1295 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2501)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2501 (_ BitVec 32)) Bool)

(assert (=> b!36315 (= res!21960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!2024 () Bool)

(assert (=> mapIsEmpty!2024 mapRes!2024))

(declare-fun b!36316 () Bool)

(declare-fun res!21959 () Bool)

(assert (=> b!36316 (=> (not res!21959) (not e!22930))))

(declare-datatypes ((List!968 0))(
  ( (Nil!965) (Cons!964 (h!1532 (_ BitVec 64)) (t!3683 List!968)) )
))
(declare-fun arrayNoDuplicates!0 (array!2501 (_ BitVec 32) List!968) Bool)

(assert (=> b!36316 (= res!21959 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!965))))

(declare-fun b!36317 () Bool)

(declare-fun e!22931 () Bool)

(assert (=> b!36317 (= e!22931 (and e!22929 mapRes!2024))))

(declare-fun condMapEmpty!2024 () Bool)

(declare-fun mapDefault!2024 () ValueCell!622)

