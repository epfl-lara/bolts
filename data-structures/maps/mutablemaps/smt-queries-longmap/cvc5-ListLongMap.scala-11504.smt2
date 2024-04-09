; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133902 () Bool)

(assert start!133902)

(declare-fun b_free!32131 () Bool)

(declare-fun b_next!32131 () Bool)

(assert (=> start!133902 (= b_free!32131 (not b_next!32131))))

(declare-fun tp!113690 () Bool)

(declare-fun b_and!51711 () Bool)

(assert (=> start!133902 (= tp!113690 b_and!51711)))

(declare-fun b!1564954 () Bool)

(declare-fun res!1069928 () Bool)

(declare-fun e!872303 () Bool)

(assert (=> b!1564954 (=> (not res!1069928) (not e!872303))))

(declare-datatypes ((array!104469 0))(
  ( (array!104470 (arr!50419 (Array (_ BitVec 32) (_ BitVec 64))) (size!50970 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104469)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104469 (_ BitVec 32)) Bool)

(assert (=> b!1564954 (= res!1069928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564955 () Bool)

(declare-fun e!872301 () Bool)

(declare-fun e!872305 () Bool)

(declare-fun mapRes!59743 () Bool)

(assert (=> b!1564955 (= e!872301 (and e!872305 mapRes!59743))))

(declare-fun condMapEmpty!59743 () Bool)

(declare-datatypes ((V!60081 0))(
  ( (V!60082 (val!19536 Int)) )
))
(declare-datatypes ((ValueCell!18422 0))(
  ( (ValueCellFull!18422 (v!22287 V!60081)) (EmptyCell!18422) )
))
(declare-datatypes ((array!104471 0))(
  ( (array!104472 (arr!50420 (Array (_ BitVec 32) ValueCell!18422)) (size!50971 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104471)

(declare-fun mapDefault!59743 () ValueCell!18422)

