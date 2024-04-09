; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112456 () Bool)

(assert start!112456)

(declare-fun b_free!30815 () Bool)

(declare-fun b_next!30815 () Bool)

(assert (=> start!112456 (= b_free!30815 (not b_next!30815))))

(declare-fun tp!108082 () Bool)

(declare-fun b_and!49667 () Bool)

(assert (=> start!112456 (= tp!108082 b_and!49667)))

(declare-fun b!1332742 () Bool)

(declare-fun res!884506 () Bool)

(declare-fun e!759289 () Bool)

(assert (=> b!1332742 (=> (not res!884506) (not e!759289))))

(declare-datatypes ((V!54069 0))(
  ( (V!54070 (val!18437 Int)) )
))
(declare-datatypes ((ValueCell!17464 0))(
  ( (ValueCellFull!17464 (v!21072 V!54069)) (EmptyCell!17464) )
))
(declare-datatypes ((array!90297 0))(
  ( (array!90298 (arr!43610 (Array (_ BitVec 32) ValueCell!17464)) (size!44161 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90297)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90299 0))(
  ( (array!90300 (arr!43611 (Array (_ BitVec 32) (_ BitVec 64))) (size!44162 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90299)

(assert (=> b!1332742 (= res!884506 (and (= (size!44161 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44162 _keys!1590) (size!44161 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884504 () Bool)

(assert (=> start!112456 (=> (not res!884504) (not e!759289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112456 (= res!884504 (validMask!0 mask!1998))))

(assert (=> start!112456 e!759289))

(declare-fun e!759288 () Bool)

(declare-fun array_inv!32837 (array!90297) Bool)

(assert (=> start!112456 (and (array_inv!32837 _values!1320) e!759288)))

(assert (=> start!112456 true))

(declare-fun array_inv!32838 (array!90299) Bool)

(assert (=> start!112456 (array_inv!32838 _keys!1590)))

(assert (=> start!112456 tp!108082))

(declare-fun tp_is_empty!36725 () Bool)

(assert (=> start!112456 tp_is_empty!36725))

(declare-fun b!1332743 () Bool)

(declare-fun e!759285 () Bool)

(assert (=> b!1332743 (= e!759285 tp_is_empty!36725)))

(declare-fun mapIsEmpty!56761 () Bool)

(declare-fun mapRes!56761 () Bool)

(assert (=> mapIsEmpty!56761 mapRes!56761))

(declare-fun mapNonEmpty!56761 () Bool)

(declare-fun tp!108083 () Bool)

(assert (=> mapNonEmpty!56761 (= mapRes!56761 (and tp!108083 e!759285))))

(declare-fun mapRest!56761 () (Array (_ BitVec 32) ValueCell!17464))

(declare-fun mapValue!56761 () ValueCell!17464)

(declare-fun mapKey!56761 () (_ BitVec 32))

(assert (=> mapNonEmpty!56761 (= (arr!43610 _values!1320) (store mapRest!56761 mapKey!56761 mapValue!56761))))

(declare-fun b!1332744 () Bool)

(declare-fun res!884507 () Bool)

(assert (=> b!1332744 (=> (not res!884507) (not e!759289))))

(declare-datatypes ((List!31093 0))(
  ( (Nil!31090) (Cons!31089 (h!32298 (_ BitVec 64)) (t!45298 List!31093)) )
))
(declare-fun arrayNoDuplicates!0 (array!90299 (_ BitVec 32) List!31093) Bool)

(assert (=> b!1332744 (= res!884507 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31090))))

(declare-fun b!1332745 () Bool)

(declare-fun e!759286 () Bool)

(assert (=> b!1332745 (= e!759288 (and e!759286 mapRes!56761))))

(declare-fun condMapEmpty!56761 () Bool)

(declare-fun mapDefault!56761 () ValueCell!17464)

