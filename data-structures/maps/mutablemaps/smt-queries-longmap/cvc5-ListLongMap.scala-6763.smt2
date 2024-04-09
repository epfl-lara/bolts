; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84902 () Bool)

(assert start!84902)

(declare-fun b!991695 () Bool)

(declare-fun e!559387 () Bool)

(declare-fun tp_is_empty!23353 () Bool)

(assert (=> b!991695 (= e!559387 tp_is_empty!23353)))

(declare-fun b!991696 () Bool)

(declare-fun res!662969 () Bool)

(declare-fun e!559389 () Bool)

(assert (=> b!991696 (=> (not res!662969) (not e!559389))))

(declare-datatypes ((array!62661 0))(
  ( (array!62662 (arr!30171 (Array (_ BitVec 32) (_ BitVec 64))) (size!30651 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62661)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62661 (_ BitVec 32)) Bool)

(assert (=> b!991696 (= res!662969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun mapNonEmpty!37101 () Bool)

(declare-fun mapRes!37101 () Bool)

(declare-fun tp!70173 () Bool)

(assert (=> mapNonEmpty!37101 (= mapRes!37101 (and tp!70173 e!559387))))

(declare-datatypes ((V!36121 0))(
  ( (V!36122 (val!11727 Int)) )
))
(declare-datatypes ((ValueCell!11195 0))(
  ( (ValueCellFull!11195 (v!14304 V!36121)) (EmptyCell!11195) )
))
(declare-fun mapValue!37101 () ValueCell!11195)

(declare-fun mapKey!37101 () (_ BitVec 32))

(declare-datatypes ((array!62663 0))(
  ( (array!62664 (arr!30172 (Array (_ BitVec 32) ValueCell!11195)) (size!30652 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62663)

(declare-fun mapRest!37101 () (Array (_ BitVec 32) ValueCell!11195))

(assert (=> mapNonEmpty!37101 (= (arr!30172 _values!1551) (store mapRest!37101 mapKey!37101 mapValue!37101))))

(declare-fun b!991697 () Bool)

(declare-fun res!662971 () Bool)

(assert (=> b!991697 (=> (not res!662971) (not e!559389))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991697 (= res!662971 (and (= (size!30652 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30651 _keys!1945) (size!30652 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37101 () Bool)

(assert (=> mapIsEmpty!37101 mapRes!37101))

(declare-fun res!662970 () Bool)

(assert (=> start!84902 (=> (not res!662970) (not e!559389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84902 (= res!662970 (validMask!0 mask!2471))))

(assert (=> start!84902 e!559389))

(assert (=> start!84902 true))

(declare-fun e!559388 () Bool)

(declare-fun array_inv!23165 (array!62663) Bool)

(assert (=> start!84902 (and (array_inv!23165 _values!1551) e!559388)))

(declare-fun array_inv!23166 (array!62661) Bool)

(assert (=> start!84902 (array_inv!23166 _keys!1945)))

(declare-fun b!991698 () Bool)

(declare-fun e!559391 () Bool)

(assert (=> b!991698 (= e!559391 tp_is_empty!23353)))

(declare-fun b!991699 () Bool)

(assert (=> b!991699 (= e!559389 false)))

(declare-fun lt!439971 () Bool)

(declare-datatypes ((List!20979 0))(
  ( (Nil!20976) (Cons!20975 (h!22137 (_ BitVec 64)) (t!29970 List!20979)) )
))
(declare-fun arrayNoDuplicates!0 (array!62661 (_ BitVec 32) List!20979) Bool)

(assert (=> b!991699 (= lt!439971 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20976))))

(declare-fun b!991700 () Bool)

(assert (=> b!991700 (= e!559388 (and e!559391 mapRes!37101))))

(declare-fun condMapEmpty!37101 () Bool)

(declare-fun mapDefault!37101 () ValueCell!11195)

