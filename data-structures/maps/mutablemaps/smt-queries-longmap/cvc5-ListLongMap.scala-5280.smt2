; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70874 () Bool)

(assert start!70874)

(declare-fun b_free!13087 () Bool)

(declare-fun b_next!13087 () Bool)

(assert (=> start!70874 (= b_free!13087 (not b_next!13087))))

(declare-fun tp!46008 () Bool)

(declare-fun b_and!21989 () Bool)

(assert (=> start!70874 (= tp!46008 b_and!21989)))

(declare-fun b!822740 () Bool)

(declare-fun res!561218 () Bool)

(declare-fun e!457528 () Bool)

(assert (=> b!822740 (=> (not res!561218) (not e!457528))))

(declare-datatypes ((array!45748 0))(
  ( (array!45749 (arr!21919 (Array (_ BitVec 32) (_ BitVec 64))) (size!22340 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45748)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45748 (_ BitVec 32)) Bool)

(assert (=> b!822740 (= res!561218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23809 () Bool)

(declare-fun mapRes!23809 () Bool)

(declare-fun tp!46009 () Bool)

(declare-fun e!457527 () Bool)

(assert (=> mapNonEmpty!23809 (= mapRes!23809 (and tp!46009 e!457527))))

(declare-datatypes ((V!24731 0))(
  ( (V!24732 (val!7446 Int)) )
))
(declare-datatypes ((ValueCell!6983 0))(
  ( (ValueCellFull!6983 (v!9874 V!24731)) (EmptyCell!6983) )
))
(declare-datatypes ((array!45750 0))(
  ( (array!45751 (arr!21920 (Array (_ BitVec 32) ValueCell!6983)) (size!22341 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45750)

(declare-fun mapKey!23809 () (_ BitVec 32))

(declare-fun mapValue!23809 () ValueCell!6983)

(declare-fun mapRest!23809 () (Array (_ BitVec 32) ValueCell!6983))

(assert (=> mapNonEmpty!23809 (= (arr!21920 _values!788) (store mapRest!23809 mapKey!23809 mapValue!23809))))

(declare-fun res!561215 () Bool)

(assert (=> start!70874 (=> (not res!561215) (not e!457528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70874 (= res!561215 (validMask!0 mask!1312))))

(assert (=> start!70874 e!457528))

(declare-fun tp_is_empty!14797 () Bool)

(assert (=> start!70874 tp_is_empty!14797))

(declare-fun array_inv!17475 (array!45748) Bool)

(assert (=> start!70874 (array_inv!17475 _keys!976)))

(assert (=> start!70874 true))

(declare-fun e!457526 () Bool)

(declare-fun array_inv!17476 (array!45750) Bool)

(assert (=> start!70874 (and (array_inv!17476 _values!788) e!457526)))

(assert (=> start!70874 tp!46008))

(declare-fun b!822741 () Bool)

(declare-fun e!457523 () Bool)

(assert (=> b!822741 (= e!457526 (and e!457523 mapRes!23809))))

(declare-fun condMapEmpty!23809 () Bool)

(declare-fun mapDefault!23809 () ValueCell!6983)

