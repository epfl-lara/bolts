; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112564 () Bool)

(assert start!112564)

(declare-fun b_free!30923 () Bool)

(declare-fun b_next!30923 () Bool)

(assert (=> start!112564 (= b_free!30923 (not b_next!30923))))

(declare-fun tp!108406 () Bool)

(declare-fun b_and!49841 () Bool)

(assert (=> start!112564 (= tp!108406 b_and!49841)))

(declare-fun mapNonEmpty!56923 () Bool)

(declare-fun mapRes!56923 () Bool)

(declare-fun tp!108407 () Bool)

(declare-fun e!760176 () Bool)

(assert (=> mapNonEmpty!56923 (= mapRes!56923 (and tp!108407 e!760176))))

(declare-datatypes ((V!54213 0))(
  ( (V!54214 (val!18491 Int)) )
))
(declare-datatypes ((ValueCell!17518 0))(
  ( (ValueCellFull!17518 (v!21126 V!54213)) (EmptyCell!17518) )
))
(declare-datatypes ((array!90507 0))(
  ( (array!90508 (arr!43715 (Array (_ BitVec 32) ValueCell!17518)) (size!44266 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90507)

(declare-fun mapKey!56923 () (_ BitVec 32))

(declare-fun mapValue!56923 () ValueCell!17518)

(declare-fun mapRest!56923 () (Array (_ BitVec 32) ValueCell!17518))

(assert (=> mapNonEmpty!56923 (= (arr!43715 _values!1320) (store mapRest!56923 mapKey!56923 mapValue!56923))))

(declare-fun b!1334689 () Bool)

(declare-fun res!885902 () Bool)

(declare-fun e!760179 () Bool)

(assert (=> b!1334689 (=> (not res!885902) (not e!760179))))

(declare-datatypes ((array!90509 0))(
  ( (array!90510 (arr!43716 (Array (_ BitVec 32) (_ BitVec 64))) (size!44267 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90509)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90509 (_ BitVec 32)) Bool)

(assert (=> b!1334689 (= res!885902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334690 () Bool)

(declare-fun e!760178 () Bool)

(declare-fun e!760177 () Bool)

(assert (=> b!1334690 (= e!760178 (and e!760177 mapRes!56923))))

(declare-fun condMapEmpty!56923 () Bool)

(declare-fun mapDefault!56923 () ValueCell!17518)

