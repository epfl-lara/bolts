; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100166 () Bool)

(assert start!100166)

(declare-fun b!1194030 () Bool)

(declare-fun res!794518 () Bool)

(declare-fun e!678637 () Bool)

(assert (=> b!1194030 (=> (not res!794518) (not e!678637))))

(declare-datatypes ((array!77240 0))(
  ( (array!77241 (arr!37266 (Array (_ BitVec 32) (_ BitVec 64))) (size!37803 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77240)

(declare-datatypes ((List!26413 0))(
  ( (Nil!26410) (Cons!26409 (h!27618 (_ BitVec 64)) (t!39091 List!26413)) )
))
(declare-fun arrayNoDuplicates!0 (array!77240 (_ BitVec 32) List!26413) Bool)

(assert (=> b!1194030 (= res!794518 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26410))))

(declare-fun b!1194031 () Bool)

(declare-fun e!678638 () Bool)

(declare-fun e!678639 () Bool)

(declare-fun mapRes!47186 () Bool)

(assert (=> b!1194031 (= e!678638 (and e!678639 mapRes!47186))))

(declare-fun condMapEmpty!47186 () Bool)

(declare-datatypes ((V!45445 0))(
  ( (V!45446 (val!15176 Int)) )
))
(declare-datatypes ((ValueCell!14410 0))(
  ( (ValueCellFull!14410 (v!17815 V!45445)) (EmptyCell!14410) )
))
(declare-datatypes ((array!77242 0))(
  ( (array!77243 (arr!37267 (Array (_ BitVec 32) ValueCell!14410)) (size!37804 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77242)

(declare-fun mapDefault!47186 () ValueCell!14410)

