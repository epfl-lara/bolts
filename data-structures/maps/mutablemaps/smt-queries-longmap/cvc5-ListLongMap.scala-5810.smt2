; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74960 () Bool)

(assert start!74960)

(declare-fun b_free!15451 () Bool)

(declare-fun b_next!15451 () Bool)

(assert (=> start!74960 (= b_free!15451 (not b_next!15451))))

(declare-fun tp!54057 () Bool)

(declare-fun b_and!25619 () Bool)

(assert (=> start!74960 (= tp!54057 b_and!25619)))

(declare-fun mapIsEmpty!28179 () Bool)

(declare-fun mapRes!28179 () Bool)

(assert (=> mapIsEmpty!28179 mapRes!28179))

(declare-fun b!883640 () Bool)

(declare-fun res!600427 () Bool)

(declare-fun e!491795 () Bool)

(assert (=> b!883640 (=> (not res!600427) (not e!491795))))

(declare-datatypes ((array!51500 0))(
  ( (array!51501 (arr!24765 (Array (_ BitVec 32) (_ BitVec 64))) (size!25206 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51500)

(declare-datatypes ((List!17685 0))(
  ( (Nil!17682) (Cons!17681 (h!18812 (_ BitVec 64)) (t!24946 List!17685)) )
))
(declare-fun arrayNoDuplicates!0 (array!51500 (_ BitVec 32) List!17685) Bool)

(assert (=> b!883640 (= res!600427 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17682))))

(declare-fun b!883641 () Bool)

(declare-fun res!600430 () Bool)

(assert (=> b!883641 (=> (not res!600430) (not e!491795))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28641 0))(
  ( (V!28642 (val!8895 Int)) )
))
(declare-datatypes ((ValueCell!8408 0))(
  ( (ValueCellFull!8408 (v!11360 V!28641)) (EmptyCell!8408) )
))
(declare-datatypes ((array!51502 0))(
  ( (array!51503 (arr!24766 (Array (_ BitVec 32) ValueCell!8408)) (size!25207 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51502)

(assert (=> b!883641 (= res!600430 (and (= (size!25207 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25206 _keys!868) (size!25207 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883642 () Bool)

(declare-datatypes ((Unit!30137 0))(
  ( (Unit!30138) )
))
(declare-fun e!491797 () Unit!30137)

(declare-fun Unit!30139 () Unit!30137)

(assert (=> b!883642 (= e!491797 Unit!30139)))

(declare-fun b!883643 () Bool)

(declare-fun res!600428 () Bool)

(assert (=> b!883643 (=> (not res!600428) (not e!491795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883643 (= res!600428 (validMask!0 mask!1196))))

(declare-fun b!883645 () Bool)

(declare-fun e!491794 () Bool)

(declare-fun e!491796 () Bool)

(assert (=> b!883645 (= e!491794 (and e!491796 mapRes!28179))))

(declare-fun condMapEmpty!28179 () Bool)

(declare-fun mapDefault!28179 () ValueCell!8408)

