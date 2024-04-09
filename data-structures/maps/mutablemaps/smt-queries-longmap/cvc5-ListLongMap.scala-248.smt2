; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4168 () Bool)

(assert start!4168)

(declare-fun b_free!1075 () Bool)

(declare-fun b_next!1075 () Bool)

(assert (=> start!4168 (= b_free!1075 (not b_next!1075))))

(declare-fun tp!4644 () Bool)

(declare-fun b_and!1887 () Bool)

(assert (=> start!4168 (= tp!4644 b_and!1887)))

(declare-fun b!31526 () Bool)

(declare-fun e!20143 () Bool)

(declare-fun tp_is_empty!1429 () Bool)

(assert (=> b!31526 (= e!20143 tp_is_empty!1429)))

(declare-fun mapNonEmpty!1672 () Bool)

(declare-fun mapRes!1672 () Bool)

(declare-fun tp!4645 () Bool)

(assert (=> mapNonEmpty!1672 (= mapRes!1672 (and tp!4645 e!20143))))

(declare-datatypes ((V!1731 0))(
  ( (V!1732 (val!741 Int)) )
))
(declare-datatypes ((ValueCell!515 0))(
  ( (ValueCellFull!515 (v!1830 V!1731)) (EmptyCell!515) )
))
(declare-datatypes ((array!2065 0))(
  ( (array!2066 (arr!986 (Array (_ BitVec 32) ValueCell!515)) (size!1087 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2065)

(declare-fun mapValue!1672 () ValueCell!515)

(declare-fun mapKey!1672 () (_ BitVec 32))

(declare-fun mapRest!1672 () (Array (_ BitVec 32) ValueCell!515))

(assert (=> mapNonEmpty!1672 (= (arr!986 _values!1501) (store mapRest!1672 mapKey!1672 mapValue!1672))))

(declare-fun b!31527 () Bool)

(declare-fun e!20144 () Bool)

(assert (=> b!31527 (= e!20144 false)))

(declare-fun lt!11583 () (_ BitVec 32))

(declare-datatypes ((array!2067 0))(
  ( (array!2068 (arr!987 (Array (_ BitVec 32) (_ BitVec 64))) (size!1088 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2067)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2067 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31527 (= lt!11583 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31528 () Bool)

(declare-fun res!19082 () Bool)

(assert (=> b!31528 (=> (not res!19082) (not e!20144))))

(declare-fun arrayContainsKey!0 (array!2067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31528 (= res!19082 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31529 () Bool)

(declare-fun res!19080 () Bool)

(assert (=> b!31529 (=> (not res!19080) (not e!20144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31529 (= res!19080 (validKeyInArray!0 k!1304))))

(declare-fun b!31530 () Bool)

(declare-fun res!19081 () Bool)

(assert (=> b!31530 (=> (not res!19081) (not e!20144))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2067 (_ BitVec 32)) Bool)

(assert (=> b!31530 (= res!19081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31531 () Bool)

(declare-fun e!20145 () Bool)

(declare-fun e!20146 () Bool)

(assert (=> b!31531 (= e!20145 (and e!20146 mapRes!1672))))

(declare-fun condMapEmpty!1672 () Bool)

(declare-fun mapDefault!1672 () ValueCell!515)

