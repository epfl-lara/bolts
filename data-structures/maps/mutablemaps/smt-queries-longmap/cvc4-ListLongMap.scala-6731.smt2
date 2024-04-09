; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84390 () Bool)

(assert start!84390)

(declare-fun mapIsEmpty!36776 () Bool)

(declare-fun mapRes!36776 () Bool)

(assert (=> mapIsEmpty!36776 mapRes!36776))

(declare-fun b!986632 () Bool)

(declare-fun res!660190 () Bool)

(declare-fun e!556397 () Bool)

(assert (=> b!986632 (=> (not res!660190) (not e!556397))))

(declare-datatypes ((array!62277 0))(
  ( (array!62278 (arr!29992 (Array (_ BitVec 32) (_ BitVec 64))) (size!30472 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62277)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986632 (= res!660190 (validKeyInArray!0 (select (arr!29992 _keys!1544) from!1932)))))

(declare-fun b!986633 () Bool)

(declare-fun res!660189 () Bool)

(assert (=> b!986633 (=> (not res!660189) (not e!556397))))

(declare-datatypes ((List!20866 0))(
  ( (Nil!20863) (Cons!20862 (h!22024 (_ BitVec 64)) (t!29773 List!20866)) )
))
(declare-fun arrayNoDuplicates!0 (array!62277 (_ BitVec 32) List!20866) Bool)

(assert (=> b!986633 (= res!660189 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20863))))

(declare-fun b!986634 () Bool)

(declare-fun e!556399 () Bool)

(declare-fun tp_is_empty!23165 () Bool)

(assert (=> b!986634 (= e!556399 tp_is_empty!23165)))

(declare-fun b!986635 () Bool)

(declare-fun e!556400 () Bool)

(assert (=> b!986635 (= e!556400 tp_is_empty!23165)))

(declare-fun res!660192 () Bool)

(assert (=> start!84390 (=> (not res!660192) (not e!556397))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84390 (= res!660192 (validMask!0 mask!1948))))

(assert (=> start!84390 e!556397))

(assert (=> start!84390 true))

(declare-datatypes ((V!35869 0))(
  ( (V!35870 (val!11633 Int)) )
))
(declare-datatypes ((ValueCell!11101 0))(
  ( (ValueCellFull!11101 (v!14195 V!35869)) (EmptyCell!11101) )
))
(declare-datatypes ((array!62279 0))(
  ( (array!62280 (arr!29993 (Array (_ BitVec 32) ValueCell!11101)) (size!30473 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62279)

(declare-fun e!556398 () Bool)

(declare-fun array_inv!23041 (array!62279) Bool)

(assert (=> start!84390 (and (array_inv!23041 _values!1278) e!556398)))

(declare-fun array_inv!23042 (array!62277) Bool)

(assert (=> start!84390 (array_inv!23042 _keys!1544)))

(declare-fun mapNonEmpty!36776 () Bool)

(declare-fun tp!69632 () Bool)

(assert (=> mapNonEmpty!36776 (= mapRes!36776 (and tp!69632 e!556399))))

(declare-fun mapKey!36776 () (_ BitVec 32))

(declare-fun mapValue!36776 () ValueCell!11101)

(declare-fun mapRest!36776 () (Array (_ BitVec 32) ValueCell!11101))

(assert (=> mapNonEmpty!36776 (= (arr!29993 _values!1278) (store mapRest!36776 mapKey!36776 mapValue!36776))))

(declare-fun b!986636 () Bool)

(declare-fun res!660187 () Bool)

(assert (=> b!986636 (=> (not res!660187) (not e!556397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62277 (_ BitVec 32)) Bool)

(assert (=> b!986636 (= res!660187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986637 () Bool)

(declare-fun res!660191 () Bool)

(assert (=> b!986637 (=> (not res!660191) (not e!556397))))

(assert (=> b!986637 (= res!660191 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30472 _keys!1544))))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun b!986638 () Bool)

(declare-fun lt!437488 () Bool)

(assert (=> b!986638 (= e!556397 (and (or lt!437488 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!437488 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!437488)) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(assert (=> b!986638 (= lt!437488 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!986639 () Bool)

(assert (=> b!986639 (= e!556398 (and e!556400 mapRes!36776))))

(declare-fun condMapEmpty!36776 () Bool)

(declare-fun mapDefault!36776 () ValueCell!11101)

