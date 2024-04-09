; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95558 () Bool)

(assert start!95558)

(declare-fun b!1078853 () Bool)

(declare-fun e!616875 () Bool)

(declare-fun tp_is_empty!26193 () Bool)

(assert (=> b!1078853 (= e!616875 tp_is_empty!26193)))

(declare-fun b!1078855 () Bool)

(declare-fun e!616874 () Bool)

(declare-datatypes ((array!69296 0))(
  ( (array!69297 (arr!33319 (Array (_ BitVec 32) (_ BitVec 64))) (size!33856 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69296)

(assert (=> b!1078855 (= e!616874 (not (or (bvsge #b00000000000000000000000000000000 (size!33856 _keys!1070)) (bvslt (size!33856 _keys!1070) #b01111111111111111111111111111111))))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078855 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35419 0))(
  ( (Unit!35420) )
))
(declare-fun lt!478694 () Unit!35419)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69296 (_ BitVec 64) (_ BitVec 32)) Unit!35419)

(assert (=> b!1078855 (= lt!478694 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1078856 () Bool)

(declare-fun res!719016 () Bool)

(assert (=> b!1078856 (=> (not res!719016) (not e!616874))))

(declare-fun lt!478693 () array!69296)

(declare-datatypes ((List!23363 0))(
  ( (Nil!23360) (Cons!23359 (h!24568 (_ BitVec 64)) (t!32729 List!23363)) )
))
(declare-fun arrayNoDuplicates!0 (array!69296 (_ BitVec 32) List!23363) Bool)

(assert (=> b!1078856 (= res!719016 (arrayNoDuplicates!0 lt!478693 #b00000000000000000000000000000000 Nil!23360))))

(declare-fun b!1078857 () Bool)

(declare-fun res!719014 () Bool)

(declare-fun e!616871 () Bool)

(assert (=> b!1078857 (=> (not res!719014) (not e!616871))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40051 0))(
  ( (V!40052 (val!13153 Int)) )
))
(declare-datatypes ((ValueCell!12387 0))(
  ( (ValueCellFull!12387 (v!15775 V!40051)) (EmptyCell!12387) )
))
(declare-datatypes ((array!69298 0))(
  ( (array!69299 (arr!33320 (Array (_ BitVec 32) ValueCell!12387)) (size!33857 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69298)

(assert (=> b!1078857 (= res!719014 (and (= (size!33857 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33856 _keys!1070) (size!33857 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078858 () Bool)

(declare-fun res!719008 () Bool)

(assert (=> b!1078858 (=> (not res!719008) (not e!616871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69296 (_ BitVec 32)) Bool)

(assert (=> b!1078858 (= res!719008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078859 () Bool)

(declare-fun res!719010 () Bool)

(assert (=> b!1078859 (=> (not res!719010) (not e!616871))))

(assert (=> b!1078859 (= res!719010 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23360))))

(declare-fun b!1078860 () Bool)

(assert (=> b!1078860 (= e!616871 e!616874)))

(declare-fun res!719011 () Bool)

(assert (=> b!1078860 (=> (not res!719011) (not e!616874))))

(assert (=> b!1078860 (= res!719011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478693 mask!1414))))

(assert (=> b!1078860 (= lt!478693 (array!69297 (store (arr!33319 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33856 _keys!1070)))))

(declare-fun mapIsEmpty!41041 () Bool)

(declare-fun mapRes!41041 () Bool)

(assert (=> mapIsEmpty!41041 mapRes!41041))

(declare-fun b!1078861 () Bool)

(declare-fun res!719012 () Bool)

(assert (=> b!1078861 (=> (not res!719012) (not e!616871))))

(assert (=> b!1078861 (= res!719012 (= (select (arr!33319 _keys!1070) i!650) k0!904))))

(declare-fun b!1078862 () Bool)

(declare-fun e!616870 () Bool)

(assert (=> b!1078862 (= e!616870 tp_is_empty!26193)))

(declare-fun b!1078863 () Bool)

(declare-fun res!719015 () Bool)

(assert (=> b!1078863 (=> (not res!719015) (not e!616871))))

(assert (=> b!1078863 (= res!719015 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33856 _keys!1070))))))

(declare-fun b!1078854 () Bool)

(declare-fun e!616872 () Bool)

(assert (=> b!1078854 (= e!616872 (and e!616875 mapRes!41041))))

(declare-fun condMapEmpty!41041 () Bool)

(declare-fun mapDefault!41041 () ValueCell!12387)

(assert (=> b!1078854 (= condMapEmpty!41041 (= (arr!33320 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12387)) mapDefault!41041)))))

(declare-fun res!719009 () Bool)

(assert (=> start!95558 (=> (not res!719009) (not e!616871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95558 (= res!719009 (validMask!0 mask!1414))))

(assert (=> start!95558 e!616871))

(assert (=> start!95558 true))

(declare-fun array_inv!25600 (array!69296) Bool)

(assert (=> start!95558 (array_inv!25600 _keys!1070)))

(declare-fun array_inv!25601 (array!69298) Bool)

(assert (=> start!95558 (and (array_inv!25601 _values!874) e!616872)))

(declare-fun b!1078864 () Bool)

(declare-fun res!719013 () Bool)

(assert (=> b!1078864 (=> (not res!719013) (not e!616871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078864 (= res!719013 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41041 () Bool)

(declare-fun tp!78504 () Bool)

(assert (=> mapNonEmpty!41041 (= mapRes!41041 (and tp!78504 e!616870))))

(declare-fun mapValue!41041 () ValueCell!12387)

(declare-fun mapRest!41041 () (Array (_ BitVec 32) ValueCell!12387))

(declare-fun mapKey!41041 () (_ BitVec 32))

(assert (=> mapNonEmpty!41041 (= (arr!33320 _values!874) (store mapRest!41041 mapKey!41041 mapValue!41041))))

(assert (= (and start!95558 res!719009) b!1078857))

(assert (= (and b!1078857 res!719014) b!1078858))

(assert (= (and b!1078858 res!719008) b!1078859))

(assert (= (and b!1078859 res!719010) b!1078863))

(assert (= (and b!1078863 res!719015) b!1078864))

(assert (= (and b!1078864 res!719013) b!1078861))

(assert (= (and b!1078861 res!719012) b!1078860))

(assert (= (and b!1078860 res!719011) b!1078856))

(assert (= (and b!1078856 res!719016) b!1078855))

(assert (= (and b!1078854 condMapEmpty!41041) mapIsEmpty!41041))

(assert (= (and b!1078854 (not condMapEmpty!41041)) mapNonEmpty!41041))

(get-info :version)

(assert (= (and mapNonEmpty!41041 ((_ is ValueCellFull!12387) mapValue!41041)) b!1078862))

(assert (= (and b!1078854 ((_ is ValueCellFull!12387) mapDefault!41041)) b!1078853))

(assert (= start!95558 b!1078854))

(declare-fun m!997347 () Bool)

(assert (=> b!1078856 m!997347))

(declare-fun m!997349 () Bool)

(assert (=> b!1078858 m!997349))

(declare-fun m!997351 () Bool)

(assert (=> start!95558 m!997351))

(declare-fun m!997353 () Bool)

(assert (=> start!95558 m!997353))

(declare-fun m!997355 () Bool)

(assert (=> start!95558 m!997355))

(declare-fun m!997357 () Bool)

(assert (=> b!1078859 m!997357))

(declare-fun m!997359 () Bool)

(assert (=> b!1078861 m!997359))

(declare-fun m!997361 () Bool)

(assert (=> b!1078860 m!997361))

(declare-fun m!997363 () Bool)

(assert (=> b!1078860 m!997363))

(declare-fun m!997365 () Bool)

(assert (=> mapNonEmpty!41041 m!997365))

(declare-fun m!997367 () Bool)

(assert (=> b!1078855 m!997367))

(declare-fun m!997369 () Bool)

(assert (=> b!1078855 m!997369))

(declare-fun m!997371 () Bool)

(assert (=> b!1078864 m!997371))

(check-sat (not b!1078864) (not b!1078858) (not mapNonEmpty!41041) (not b!1078860) (not b!1078856) (not start!95558) (not b!1078855) tp_is_empty!26193 (not b!1078859))
(check-sat)
(get-model)

(declare-fun d!129883 () Bool)

(assert (=> d!129883 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95558 d!129883))

(declare-fun d!129885 () Bool)

(assert (=> d!129885 (= (array_inv!25600 _keys!1070) (bvsge (size!33856 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95558 d!129885))

(declare-fun d!129887 () Bool)

(assert (=> d!129887 (= (array_inv!25601 _values!874) (bvsge (size!33857 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95558 d!129887))

(declare-fun b!1078911 () Bool)

(declare-fun e!616902 () Bool)

(declare-fun call!45744 () Bool)

(assert (=> b!1078911 (= e!616902 call!45744)))

(declare-fun b!1078912 () Bool)

(declare-fun e!616903 () Bool)

(declare-fun e!616905 () Bool)

(assert (=> b!1078912 (= e!616903 e!616905)))

(declare-fun res!719051 () Bool)

(assert (=> b!1078912 (=> (not res!719051) (not e!616905))))

(declare-fun e!616904 () Bool)

(assert (=> b!1078912 (= res!719051 (not e!616904))))

(declare-fun res!719050 () Bool)

(assert (=> b!1078912 (=> (not res!719050) (not e!616904))))

(assert (=> b!1078912 (= res!719050 (validKeyInArray!0 (select (arr!33319 lt!478693) #b00000000000000000000000000000000)))))

(declare-fun b!1078913 () Bool)

(assert (=> b!1078913 (= e!616905 e!616902)))

(declare-fun c!108285 () Bool)

(assert (=> b!1078913 (= c!108285 (validKeyInArray!0 (select (arr!33319 lt!478693) #b00000000000000000000000000000000)))))

(declare-fun b!1078914 () Bool)

(assert (=> b!1078914 (= e!616902 call!45744)))

(declare-fun d!129889 () Bool)

(declare-fun res!719052 () Bool)

(assert (=> d!129889 (=> res!719052 e!616903)))

(assert (=> d!129889 (= res!719052 (bvsge #b00000000000000000000000000000000 (size!33856 lt!478693)))))

(assert (=> d!129889 (= (arrayNoDuplicates!0 lt!478693 #b00000000000000000000000000000000 Nil!23360) e!616903)))

(declare-fun bm!45741 () Bool)

(assert (=> bm!45741 (= call!45744 (arrayNoDuplicates!0 lt!478693 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108285 (Cons!23359 (select (arr!33319 lt!478693) #b00000000000000000000000000000000) Nil!23360) Nil!23360)))))

(declare-fun b!1078915 () Bool)

(declare-fun contains!6387 (List!23363 (_ BitVec 64)) Bool)

(assert (=> b!1078915 (= e!616904 (contains!6387 Nil!23360 (select (arr!33319 lt!478693) #b00000000000000000000000000000000)))))

(assert (= (and d!129889 (not res!719052)) b!1078912))

(assert (= (and b!1078912 res!719050) b!1078915))

(assert (= (and b!1078912 res!719051) b!1078913))

(assert (= (and b!1078913 c!108285) b!1078914))

(assert (= (and b!1078913 (not c!108285)) b!1078911))

(assert (= (or b!1078914 b!1078911) bm!45741))

(declare-fun m!997399 () Bool)

(assert (=> b!1078912 m!997399))

(assert (=> b!1078912 m!997399))

(declare-fun m!997401 () Bool)

(assert (=> b!1078912 m!997401))

(assert (=> b!1078913 m!997399))

(assert (=> b!1078913 m!997399))

(assert (=> b!1078913 m!997401))

(assert (=> bm!45741 m!997399))

(declare-fun m!997403 () Bool)

(assert (=> bm!45741 m!997403))

(assert (=> b!1078915 m!997399))

(assert (=> b!1078915 m!997399))

(declare-fun m!997405 () Bool)

(assert (=> b!1078915 m!997405))

(assert (=> b!1078856 d!129889))

(declare-fun bm!45744 () Bool)

(declare-fun call!45747 () Bool)

(assert (=> bm!45744 (= call!45747 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!478693 mask!1414))))

(declare-fun b!1078924 () Bool)

(declare-fun e!616914 () Bool)

(assert (=> b!1078924 (= e!616914 call!45747)))

(declare-fun b!1078925 () Bool)

(declare-fun e!616913 () Bool)

(assert (=> b!1078925 (= e!616913 call!45747)))

(declare-fun b!1078926 () Bool)

(declare-fun e!616912 () Bool)

(assert (=> b!1078926 (= e!616912 e!616914)))

(declare-fun c!108288 () Bool)

(assert (=> b!1078926 (= c!108288 (validKeyInArray!0 (select (arr!33319 lt!478693) #b00000000000000000000000000000000)))))

(declare-fun d!129891 () Bool)

(declare-fun res!719058 () Bool)

(assert (=> d!129891 (=> res!719058 e!616912)))

(assert (=> d!129891 (= res!719058 (bvsge #b00000000000000000000000000000000 (size!33856 lt!478693)))))

(assert (=> d!129891 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478693 mask!1414) e!616912)))

(declare-fun b!1078927 () Bool)

(assert (=> b!1078927 (= e!616914 e!616913)))

(declare-fun lt!478708 () (_ BitVec 64))

(assert (=> b!1078927 (= lt!478708 (select (arr!33319 lt!478693) #b00000000000000000000000000000000))))

(declare-fun lt!478707 () Unit!35419)

(assert (=> b!1078927 (= lt!478707 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!478693 lt!478708 #b00000000000000000000000000000000))))

(assert (=> b!1078927 (arrayContainsKey!0 lt!478693 lt!478708 #b00000000000000000000000000000000)))

(declare-fun lt!478709 () Unit!35419)

(assert (=> b!1078927 (= lt!478709 lt!478707)))

(declare-fun res!719057 () Bool)

(declare-datatypes ((SeekEntryResult!9900 0))(
  ( (MissingZero!9900 (index!41970 (_ BitVec 32))) (Found!9900 (index!41971 (_ BitVec 32))) (Intermediate!9900 (undefined!10712 Bool) (index!41972 (_ BitVec 32)) (x!96696 (_ BitVec 32))) (Undefined!9900) (MissingVacant!9900 (index!41973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69296 (_ BitVec 32)) SeekEntryResult!9900)

(assert (=> b!1078927 (= res!719057 (= (seekEntryOrOpen!0 (select (arr!33319 lt!478693) #b00000000000000000000000000000000) lt!478693 mask!1414) (Found!9900 #b00000000000000000000000000000000)))))

(assert (=> b!1078927 (=> (not res!719057) (not e!616913))))

(assert (= (and d!129891 (not res!719058)) b!1078926))

(assert (= (and b!1078926 c!108288) b!1078927))

(assert (= (and b!1078926 (not c!108288)) b!1078924))

(assert (= (and b!1078927 res!719057) b!1078925))

(assert (= (or b!1078925 b!1078924) bm!45744))

(declare-fun m!997407 () Bool)

(assert (=> bm!45744 m!997407))

(assert (=> b!1078926 m!997399))

(assert (=> b!1078926 m!997399))

(assert (=> b!1078926 m!997401))

(assert (=> b!1078927 m!997399))

(declare-fun m!997409 () Bool)

(assert (=> b!1078927 m!997409))

(declare-fun m!997411 () Bool)

(assert (=> b!1078927 m!997411))

(assert (=> b!1078927 m!997399))

(declare-fun m!997413 () Bool)

(assert (=> b!1078927 m!997413))

(assert (=> b!1078860 d!129891))

(declare-fun d!129893 () Bool)

(declare-fun res!719063 () Bool)

(declare-fun e!616919 () Bool)

(assert (=> d!129893 (=> res!719063 e!616919)))

(assert (=> d!129893 (= res!719063 (= (select (arr!33319 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!129893 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!616919)))

(declare-fun b!1078932 () Bool)

(declare-fun e!616920 () Bool)

(assert (=> b!1078932 (= e!616919 e!616920)))

(declare-fun res!719064 () Bool)

(assert (=> b!1078932 (=> (not res!719064) (not e!616920))))

(assert (=> b!1078932 (= res!719064 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!33856 _keys!1070)))))

(declare-fun b!1078933 () Bool)

(assert (=> b!1078933 (= e!616920 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!129893 (not res!719063)) b!1078932))

(assert (= (and b!1078932 res!719064) b!1078933))

(declare-fun m!997415 () Bool)

(assert (=> d!129893 m!997415))

(declare-fun m!997417 () Bool)

(assert (=> b!1078933 m!997417))

(assert (=> b!1078855 d!129893))

(declare-fun d!129895 () Bool)

(assert (=> d!129895 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!478712 () Unit!35419)

(declare-fun choose!13 (array!69296 (_ BitVec 64) (_ BitVec 32)) Unit!35419)

(assert (=> d!129895 (= lt!478712 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!129895 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!129895 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!478712)))

(declare-fun bs!31787 () Bool)

(assert (= bs!31787 d!129895))

(assert (=> bs!31787 m!997367))

(declare-fun m!997419 () Bool)

(assert (=> bs!31787 m!997419))

(assert (=> b!1078855 d!129895))

(declare-fun d!129897 () Bool)

(assert (=> d!129897 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1078864 d!129897))

(declare-fun b!1078934 () Bool)

(declare-fun e!616921 () Bool)

(declare-fun call!45748 () Bool)

(assert (=> b!1078934 (= e!616921 call!45748)))

(declare-fun b!1078935 () Bool)

(declare-fun e!616922 () Bool)

(declare-fun e!616924 () Bool)

(assert (=> b!1078935 (= e!616922 e!616924)))

(declare-fun res!719066 () Bool)

(assert (=> b!1078935 (=> (not res!719066) (not e!616924))))

(declare-fun e!616923 () Bool)

(assert (=> b!1078935 (= res!719066 (not e!616923))))

(declare-fun res!719065 () Bool)

(assert (=> b!1078935 (=> (not res!719065) (not e!616923))))

(assert (=> b!1078935 (= res!719065 (validKeyInArray!0 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1078936 () Bool)

(assert (=> b!1078936 (= e!616924 e!616921)))

(declare-fun c!108289 () Bool)

(assert (=> b!1078936 (= c!108289 (validKeyInArray!0 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1078937 () Bool)

(assert (=> b!1078937 (= e!616921 call!45748)))

(declare-fun d!129899 () Bool)

(declare-fun res!719067 () Bool)

(assert (=> d!129899 (=> res!719067 e!616922)))

(assert (=> d!129899 (= res!719067 (bvsge #b00000000000000000000000000000000 (size!33856 _keys!1070)))))

(assert (=> d!129899 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23360) e!616922)))

(declare-fun bm!45745 () Bool)

(assert (=> bm!45745 (= call!45748 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108289 (Cons!23359 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000) Nil!23360) Nil!23360)))))

(declare-fun b!1078938 () Bool)

(assert (=> b!1078938 (= e!616923 (contains!6387 Nil!23360 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!129899 (not res!719067)) b!1078935))

(assert (= (and b!1078935 res!719065) b!1078938))

(assert (= (and b!1078935 res!719066) b!1078936))

(assert (= (and b!1078936 c!108289) b!1078937))

(assert (= (and b!1078936 (not c!108289)) b!1078934))

(assert (= (or b!1078937 b!1078934) bm!45745))

(assert (=> b!1078935 m!997415))

(assert (=> b!1078935 m!997415))

(declare-fun m!997421 () Bool)

(assert (=> b!1078935 m!997421))

(assert (=> b!1078936 m!997415))

(assert (=> b!1078936 m!997415))

(assert (=> b!1078936 m!997421))

(assert (=> bm!45745 m!997415))

(declare-fun m!997423 () Bool)

(assert (=> bm!45745 m!997423))

(assert (=> b!1078938 m!997415))

(assert (=> b!1078938 m!997415))

(declare-fun m!997425 () Bool)

(assert (=> b!1078938 m!997425))

(assert (=> b!1078859 d!129899))

(declare-fun bm!45746 () Bool)

(declare-fun call!45749 () Bool)

(assert (=> bm!45746 (= call!45749 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1078939 () Bool)

(declare-fun e!616927 () Bool)

(assert (=> b!1078939 (= e!616927 call!45749)))

(declare-fun b!1078940 () Bool)

(declare-fun e!616926 () Bool)

(assert (=> b!1078940 (= e!616926 call!45749)))

(declare-fun b!1078941 () Bool)

(declare-fun e!616925 () Bool)

(assert (=> b!1078941 (= e!616925 e!616927)))

(declare-fun c!108290 () Bool)

(assert (=> b!1078941 (= c!108290 (validKeyInArray!0 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!129901 () Bool)

(declare-fun res!719069 () Bool)

(assert (=> d!129901 (=> res!719069 e!616925)))

(assert (=> d!129901 (= res!719069 (bvsge #b00000000000000000000000000000000 (size!33856 _keys!1070)))))

(assert (=> d!129901 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!616925)))

(declare-fun b!1078942 () Bool)

(assert (=> b!1078942 (= e!616927 e!616926)))

(declare-fun lt!478714 () (_ BitVec 64))

(assert (=> b!1078942 (= lt!478714 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!478713 () Unit!35419)

(assert (=> b!1078942 (= lt!478713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478714 #b00000000000000000000000000000000))))

(assert (=> b!1078942 (arrayContainsKey!0 _keys!1070 lt!478714 #b00000000000000000000000000000000)))

(declare-fun lt!478715 () Unit!35419)

(assert (=> b!1078942 (= lt!478715 lt!478713)))

(declare-fun res!719068 () Bool)

(assert (=> b!1078942 (= res!719068 (= (seekEntryOrOpen!0 (select (arr!33319 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9900 #b00000000000000000000000000000000)))))

(assert (=> b!1078942 (=> (not res!719068) (not e!616926))))

(assert (= (and d!129901 (not res!719069)) b!1078941))

(assert (= (and b!1078941 c!108290) b!1078942))

(assert (= (and b!1078941 (not c!108290)) b!1078939))

(assert (= (and b!1078942 res!719068) b!1078940))

(assert (= (or b!1078940 b!1078939) bm!45746))

(declare-fun m!997427 () Bool)

(assert (=> bm!45746 m!997427))

(assert (=> b!1078941 m!997415))

(assert (=> b!1078941 m!997415))

(assert (=> b!1078941 m!997421))

(assert (=> b!1078942 m!997415))

(declare-fun m!997429 () Bool)

(assert (=> b!1078942 m!997429))

(declare-fun m!997431 () Bool)

(assert (=> b!1078942 m!997431))

(assert (=> b!1078942 m!997415))

(declare-fun m!997433 () Bool)

(assert (=> b!1078942 m!997433))

(assert (=> b!1078858 d!129901))

(declare-fun mapNonEmpty!41047 () Bool)

(declare-fun mapRes!41047 () Bool)

(declare-fun tp!78510 () Bool)

(declare-fun e!616933 () Bool)

(assert (=> mapNonEmpty!41047 (= mapRes!41047 (and tp!78510 e!616933))))

(declare-fun mapValue!41047 () ValueCell!12387)

(declare-fun mapRest!41047 () (Array (_ BitVec 32) ValueCell!12387))

(declare-fun mapKey!41047 () (_ BitVec 32))

(assert (=> mapNonEmpty!41047 (= mapRest!41041 (store mapRest!41047 mapKey!41047 mapValue!41047))))

(declare-fun mapIsEmpty!41047 () Bool)

(assert (=> mapIsEmpty!41047 mapRes!41047))

(declare-fun b!1078949 () Bool)

(assert (=> b!1078949 (= e!616933 tp_is_empty!26193)))

(declare-fun b!1078950 () Bool)

(declare-fun e!616932 () Bool)

(assert (=> b!1078950 (= e!616932 tp_is_empty!26193)))

(declare-fun condMapEmpty!41047 () Bool)

(declare-fun mapDefault!41047 () ValueCell!12387)

(assert (=> mapNonEmpty!41041 (= condMapEmpty!41047 (= mapRest!41041 ((as const (Array (_ BitVec 32) ValueCell!12387)) mapDefault!41047)))))

(assert (=> mapNonEmpty!41041 (= tp!78504 (and e!616932 mapRes!41047))))

(assert (= (and mapNonEmpty!41041 condMapEmpty!41047) mapIsEmpty!41047))

(assert (= (and mapNonEmpty!41041 (not condMapEmpty!41047)) mapNonEmpty!41047))

(assert (= (and mapNonEmpty!41047 ((_ is ValueCellFull!12387) mapValue!41047)) b!1078949))

(assert (= (and mapNonEmpty!41041 ((_ is ValueCellFull!12387) mapDefault!41047)) b!1078950))

(declare-fun m!997435 () Bool)

(assert (=> mapNonEmpty!41047 m!997435))

(check-sat (not b!1078912) (not b!1078941) (not b!1078926) (not b!1078936) (not bm!45741) (not bm!45746) (not b!1078913) (not bm!45744) (not b!1078942) (not d!129895) (not b!1078938) (not b!1078927) (not b!1078915) (not b!1078933) (not b!1078935) tp_is_empty!26193 (not mapNonEmpty!41047) (not bm!45745))
(check-sat)
