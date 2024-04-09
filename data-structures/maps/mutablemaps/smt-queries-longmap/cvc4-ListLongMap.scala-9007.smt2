; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108842 () Bool)

(assert start!108842)

(declare-fun b_free!28319 () Bool)

(declare-fun b_next!28319 () Bool)

(assert (=> start!108842 (= b_free!28319 (not b_next!28319))))

(declare-fun tp!100074 () Bool)

(declare-fun b_and!46395 () Bool)

(assert (=> start!108842 (= tp!100074 b_and!46395)))

(declare-fun b!1284787 () Bool)

(declare-fun res!853578 () Bool)

(declare-fun e!733929 () Bool)

(assert (=> b!1284787 (=> (not res!853578) (not e!733929))))

(declare-datatypes ((array!84933 0))(
  ( (array!84934 (arr!40964 (Array (_ BitVec 32) (_ BitVec 64))) (size!41515 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84933)

(declare-datatypes ((List!29201 0))(
  ( (Nil!29198) (Cons!29197 (h!30406 (_ BitVec 64)) (t!42752 List!29201)) )
))
(declare-fun arrayNoDuplicates!0 (array!84933 (_ BitVec 32) List!29201) Bool)

(assert (=> b!1284787 (= res!853578 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29198))))

(declare-fun mapIsEmpty!52496 () Bool)

(declare-fun mapRes!52496 () Bool)

(assert (=> mapIsEmpty!52496 mapRes!52496))

(declare-fun b!1284788 () Bool)

(declare-fun res!853577 () Bool)

(assert (=> b!1284788 (=> (not res!853577) (not e!733929))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284788 (= res!853577 (validKeyInArray!0 (select (arr!40964 _keys!1741) from!2144)))))

(declare-fun b!1284789 () Bool)

(declare-fun e!733928 () Bool)

(declare-fun tp_is_empty!33959 () Bool)

(assert (=> b!1284789 (= e!733928 tp_is_empty!33959)))

(declare-fun b!1284790 () Bool)

(declare-fun e!733927 () Bool)

(assert (=> b!1284790 (= e!733927 (and e!733928 mapRes!52496))))

(declare-fun condMapEmpty!52496 () Bool)

(declare-datatypes ((V!50381 0))(
  ( (V!50382 (val!17054 Int)) )
))
(declare-datatypes ((ValueCell!16081 0))(
  ( (ValueCellFull!16081 (v!19654 V!50381)) (EmptyCell!16081) )
))
(declare-datatypes ((array!84935 0))(
  ( (array!84936 (arr!40965 (Array (_ BitVec 32) ValueCell!16081)) (size!41516 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84935)

(declare-fun mapDefault!52496 () ValueCell!16081)

